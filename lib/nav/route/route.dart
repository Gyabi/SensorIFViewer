import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sensor_if_viewer/core/view/core_page.dart';
import 'package:sensor_if_viewer/nav/view/nav_page.dart';
import 'package:sensor_if_viewer/settings/view/setting_page.dart';

final router = GoRouter(
  initialLocation: '/core',
  routes: [
    ShellRoute(
      builder: (context, state, child) => NavPage(title: 'Sensor IF Viewer', child: child),
      routes: [
        GoRoute(path: '/core', builder: (_, __) => CorePage()),
        GoRoute(path: '/settings', builder: (_, __) => SettingPage()),
      ]
    )
  ]
);