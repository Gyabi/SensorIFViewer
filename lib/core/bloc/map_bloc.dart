import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sensor_if_viewer/core/logic/udp.dart';
import 'package:sensor_if_viewer/message/cool4_sensor_interface_specification_v1.1.0.pb.dart';

class PlotData {
  final int id;
  final double latitude;
  final double longitude;
  final DateTime lastUpdated;

  PlotData({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.lastUpdated,
  });
}

abstract class MarkerEvent {}

class _MarkerUpdated extends MarkerEvent {
  final List<PlotData> newPlotData;
  _MarkerUpdated({required this.newPlotData});
}

class MarkerState {
  final List<PlotData> plotData;
  MarkerState(this.plotData);
}

class MarkerBloc extends Bloc<MarkerEvent, MarkerState> {
  final UdpReceiver udpReceiver;
  final Map<int, PlotData> plotDataMap = {};
  late final Timer _cleanupTimer;

  MarkerBloc({required this.udpReceiver}) : super(MarkerState([])) {
    udpReceiver.messageStream.listen((message) {
      final parsed = parseMessage(message);

      plotDataMap[message.messageId] = parsed;
    });

    // execute per 100ms
    // - delete old datas
    // - emit current datas
    _cleanupTimer = Timer.periodic(Duration(milliseconds: 100), (_) {
      final now = DateTime.now();
      plotDataMap.removeWhere(
        (_, data) => now.difference(data.lastUpdated).inMilliseconds > 200,
      );
      add(_MarkerUpdated(newPlotData: plotDataMap.values.toList()));
    });

    on<_MarkerUpdated>((event, emit) {
      emit(MarkerState(event.newPlotData));
    });
  }

  @override
  Future<void> close() {
    _cleanupTimer.cancel();
    return super.close();
  }

  parseMessage(SensingMessage message) {
    return PlotData(
      id: message.messageId,
      latitude: message.sensorInfo.first.latitude / 10000000.0,
      longitude: message.sensorInfo.first.longitude / 10000000.0,
      lastUpdated: DateTime.now(),
    );
  }
}
