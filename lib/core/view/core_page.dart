import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sensor_if_viewer/core/bloc/core_bloc.dart';
import 'package:sensor_if_viewer/core/view/map.dart';


class CorePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _CorePageState();
}

class _CorePageState extends State<CorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main')),
      body: Column(children: [
        BlocBuilder<CoreBloc, CoreState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                state.status == CoreStatus.ready?
                ElevatedButton(
                  child: const Text('Start'),
                  onPressed: () => context.read<CoreBloc>().add(StartEvent()),
                ) :
                ElevatedButton(
                  child: const Text('End'),
                  onPressed: () => context.read<CoreBloc>().add(StopEvent()),
                ),
              ],
            );
          },
        ),
        Padding(padding: EdgeInsets.all(15)),
        Expanded(
          child: CoreMap(),
        ),
      ],)
    );
  }

}