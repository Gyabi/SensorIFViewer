import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CoreEvent{}

class SwitchPage extends CoreEvent {
  final String route;
  SwitchPage(this.route);
}

class CoreState {
  final String currentRoute;
  CoreState(this.currentRoute);
}

class CoreBloc extends Bloc<CoreEvent, CoreState> {
  CoreBloc() : super(CoreState('/core')) {
    on<SwitchPage>((event, emit) {
      emit(CoreState(event.route));
    });
  }
}