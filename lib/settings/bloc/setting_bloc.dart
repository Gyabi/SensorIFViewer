import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sensor_if_viewer/settings/bloc/setting_model.dart';
import 'package:sensor_if_viewer/settings/repository/setting_repository.dart';

abstract class SettingEvent {}

class UpdateSetting extends SettingEvent {
  final SettingItem newItem;
  UpdateSetting({required this.newItem});
}

class InitializeSetting extends SettingEvent {}

class SettingState {
  final bool loaded;
  final SettingItem setting;
  SettingState({required this.setting, this.loaded = false});
}

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  final SettingRepository repository;
  SettingBloc({required this.repository}) : super(SettingState(setting: SettingItem(port: 0))) {
    on<UpdateSetting>((event, emit) async {
      await repository.saveSetting(event.newItem);
      emit(SettingState(setting: event.newItem, loaded: true));
      print('update');
    });

    on<InitializeSetting>((event, emit) async {
      final initialData = await repository.loadSetting();
      add(UpdateSetting(newItem: initialData));
      print('init');
    });
  }
}