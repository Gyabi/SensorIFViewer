import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sensor_if_viewer/nav/bloc/nav_bloc.dart';
import 'package:go_router/go_router.dart';

class NavPage extends StatelessWidget {
  final String title;
  final Widget child;

  const NavPage({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBloc, NavState>(
      builder: (context, state) {
        final isCore = state.currentRoute == '/core';

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
          ),
          body: child,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final nextRoute = isCore ? '/settings' : '/core';
              context.read<NavBloc>().add(SwitchPage(nextRoute));

              context.go(nextRoute);
            },
            child: Icon(isCore ? Icons.settings : Icons.map),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
        );
      },
    );
  }
}
