import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sensor_if_viewer/nav/bloc/nav_bloc.dart';
import 'package:sensor_if_viewer/nav/route/route.dart';
import 'package:sensor_if_viewer/settings/bloc/setting_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => NavBloc()),
        BlocProvider(create: (_) => SettingBloc())
      ],
      child: MaterialApp.router(
        routerConfig: router,
        title: 'Sensor IF Viewer',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
      ),
    );
  }
}