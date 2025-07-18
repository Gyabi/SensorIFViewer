
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:sensor_if_viewer/core/bloc/map_bloc.dart';

class CoreMap extends StatelessWidget {
  const CoreMap({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(35.6812, 139.7671),
        initialZoom: 13,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.jp/{z}/{x}/{y}.png', // For demonstration only
          userAgentPackageName: 'com.sample.sensor_if_viewer', // Add your app identifier
        ),
        // BlocBuilderでMarkerLayerだけリビルド
        BlocBuilder<MarkerBloc, MarkerState>(
          builder: (context, state) {
            return MarkerLayer(
              markers: state.plotData.map((d) => Marker(
                point: LatLng(d.latitude, d.longitude),
                child: const Icon(Icons.location_on, color: Colors.red),
                width: 40,
                height: 40,
              )).toList(),
            );
          },
        ),
      ],
    );
  }
}
