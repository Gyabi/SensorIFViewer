import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sensor_if_viewer/core/logic/udp.dart';
import 'package:sensor_if_viewer/settings/bloc/setting_bloc.dart';
import 'package:sensor_if_viewer/settings/repository/setting_repository.dart';
import 'package:latlong2/latlong.dart';


enum CoreStatus { ready, executing }

abstract class CoreEvent {}

class StartEvent extends CoreEvent {}
class StopEvent extends CoreEvent {}

class CoreState {
  final CoreStatus status;

  CoreState({
    required this.status,
  });

  CoreState copyWith({CoreStatus? status, List<LatLng>? positions}) {
    return CoreState(
      status: status ?? this.status,
    );
  }
}

class CoreBloc extends Bloc<CoreEvent, CoreState> {
  final SettingRepository repository;
  final UdpReceiver udpReceiver;
  CoreBloc({required this.repository, required this.udpReceiver}): super(CoreState(status: CoreStatus.ready)) {
    on<StartEvent>((event, emit) async {
      final currentSetting = await repository.loadSetting();
      await udpReceiver.start(currentSetting.port);
      emit(state.copyWith(status: CoreStatus.executing));
    });

    on<StopEvent>((event, emit) async {
      udpReceiver.stop();
      emit(state.copyWith(status: CoreStatus.ready));
    });

  }
}