import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sensor_if_viewer/core/view/core_page.dart';

final router = GoRouter(
  initialLocation: '/core',
  routes: [
    ShellRoute(
      builder: (context, state, child) => CorePage(title: 'Sensor IF Viewer', child: child),
      routes: [
        GoRoute(path: '/core', builder: (_, __) => const Text('core')),
        GoRoute(path: '/settings', builder: (_, __) => const Text('settings')),
      ]
    )
  ]
);