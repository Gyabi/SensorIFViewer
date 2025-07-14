import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sensor_if_viewer/settings/bloc/setting_model.dart';

abstract class SettingEvent {}

class AddSetting extends SettingEvent {}
class RemoveSetting extends SettingEvent {
  final int index;
  RemoveSetting(this.index);
}

class UpdateSetting extends SettingEvent {
  final int index;
  final SettingItem newItem;
  UpdateSetting({required this.index, required this.newItem});
}

class SettingState {
  final List<SettingItem> settings;
  SettingState({required this.settings});
}

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingState(settings: [])) {
    on<AddSetting>((event, emit) {
      emit(SettingState(settings: [...state.settings, SettingItem(port: 0, name: '')]));
    });
    on<RemoveSetting>((event, emit) {
      final newList = [...state.settings]..removeAt(event.index);
      emit(SettingState(settings: newList));
    });
    on<UpdateSetting>((event, emit) {
      final updatedList = [...state.settings];
      updatedList[event.index] = event.newItem;
      emit(SettingState(settings: updatedList));
    });
  }
}