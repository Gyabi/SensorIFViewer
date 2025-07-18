import 'dart:async';

import 'dart:io';
import 'dart:typed_data';
import 'package:archive/archive.dart';

import 'package:sensor_if_viewer/message/cool4_sensor_interface_specification_v1.1.0.pb.dart';

class UdpReceiver {
  RawDatagramSocket? _socket;
  bool _isRunning = false;

  StreamController<SensingMessage> _messageController =
      StreamController<SensingMessage>.broadcast();
  Stream<SensingMessage> get messageStream {
    return _messageController.stream;
  }

  UdpReceiver();

  // start(ポートを引数指定)
  Future<void> start(int port) async {
    if (_isRunning) return;

    _socket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, port);
    _isRunning = true;

    _socket?.listen((RawSocketEvent event) {
      if (event == RawSocketEvent.read) {
        final datagram = _socket?.receive();
        if (datagram != null) {
          final data = datagram.data;
          if (data.length < 4) return;

          try {
            final crcBytes = data.sublist(data.length - 4);
            final payload = data.sublist(0, data.length - 4);

            final receivedCrc = ByteData.sublistView(
              crcBytes,
            ).getUint32(0, Endian.little);
            final calculatedCrc = getCrc32(payload);

            if (receivedCrc != calculatedCrc) {
              print(
                'CRC mismatch: expected $receivedCrc but got $calculatedCrc',
              );
              return;
            }

            final msg = SensingMessage.fromBuffer(payload);
            _messageController.add(msg);
          } catch (e) {
            print('Parse or CRC error: $e');
          }
        }
      }
    });
  }

  void stop() {
    if (!_isRunning) return;

    _isRunning = false;
    _socket?.close();
    _socket = null;
  }
}
