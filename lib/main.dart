import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sensor_if_viewer/core/bloc/core_bloc.dart';
import 'package:sensor_if_viewer/core/bloc/map_bloc.dart';
import 'package:sensor_if_viewer/core/logic/udp.dart';
import 'package:sensor_if_viewer/nav/bloc/nav_bloc.dart';
import 'package:sensor_if_viewer/nav/route/route.dart';
import 'package:sensor_if_viewer/settings/bloc/setting_bloc.dart';
import 'package:sensor_if_viewer/settings/repository/setting_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers:[
        RepositoryProvider(create: (_) => SettingRepository(),),
        RepositoryProvider(create: (_) => UdpReceiver(),)
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => NavBloc()),
          BlocProvider(create: (context) => SettingBloc(repository: context.read<SettingRepository>())),
          BlocProvider(create: (context) => CoreBloc(repository: context.read<SettingRepository>(), udpReceiver: context.read<UdpReceiver>())),
          BlocProvider(create: (context) => MarkerBloc(udpReceiver: context.read<UdpReceiver>())),
        ],
        child: MaterialApp.router(
          routerConfig: router,
          title: 'Sensor IF Viewer',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
        ),
      )
    );
    
  }
}