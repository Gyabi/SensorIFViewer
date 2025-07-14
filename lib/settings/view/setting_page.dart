import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sensor_if_viewer/settings/bloc/setting_bloc.dart';

class SettingPage extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Setting')),
      body: BlocBuilder<SettingBloc, SettingState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.settings.length,
            itemBuilder: (context, index) {
              final item = state.settings[index];
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
                                        index: index,
                                        newItem: item.copyWith(port: port),
                                      ),
                                    );
                              },
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: TextFormField(
                              initialValue: item.name,
                              decoration: const InputDecoration(labelText: 'Sensor Identifier'),
                              onChanged: (val) {
                                context.read<SettingBloc>().add(
                                      UpdateSetting(
                                        index: index,
                                        newItem: item.copyWith(name: val),
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
                                        index: index,
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
                                        index: index,
                                        newItem: item.copyWith(showObject: val ?? false),
                                      ),
                                    );
                              },
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            context.read<SettingBloc>().add(RemoveSetting(index));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.read<SettingBloc>().add(AddSetting()),
        icon: const Icon(Icons.add),
        label: const Text('Add'),
      ),
    );
  }
}