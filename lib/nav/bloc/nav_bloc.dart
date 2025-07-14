import 'package:flutter_bloc/flutter_bloc.dart';

abstract class NaviEvent{}

class SwitchPage extends NaviEvent {
  final String route;
  SwitchPage(this.route);
}

class NavState {
  final String currentRoute;
  NavState(this.currentRoute);
}

class NavBloc extends Bloc<NaviEvent, NavState> {
  NavBloc() : super(NavState('/core')) {
    on<SwitchPage>((event, emit) {
      emit(NavState(event.route));
    });
  }
}