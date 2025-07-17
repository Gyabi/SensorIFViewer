import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sensor_if_viewer/settings/bloc/setting_bloc.dart';

class SettingPage extends StatefulWidget {
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if(!_initialized) {
      _initialized = true;

      // execute when first redering
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<SettingBloc>().add(InitializeSetting());
      });
    }
  }


  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: const Text('Setting')),
        body: BlocBuilder<SettingBloc, SettingState>(
          builder: (context, state) {
            if (state.loaded) {
              final item = state.setting;
              return Card(
                margin: const EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              initialValue: item.port.toString(),
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(labelText: 'Recieve port'),
                              onChanged: (val) {
                                final port = int.tryParse(val) ?? 0;
                                context.read<SettingBloc>().add(
                                      UpdateSetting(
                                        newItem: item.copyWith(port: port),
                                      ),
                                    );
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                              'Display',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                              title: const Text('Sensor info'),
                              value: item.showSensor,
                              onChanged: (val) {
                                context.read<SettingBloc>().add(
                                      UpdateSetting(
                                        newItem: item.copyWith(showSensor: val ?? false),
                                      ),
                                    );
                              },
                            ),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                              title: const Text('Detected object'),
                              value: item.showObject,
                              onChanged: (val) {
                                context.read<SettingBloc>().add(
                                      UpdateSetting(
                                        newItem: item.copyWith(showObject: val ?? false),
                                      ),
                                    );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator()
              );
            }

          },
        ),
      );
    }
}