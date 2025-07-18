// This is a generated file - do not edit.
//
// Generated from cool4_sensor_interface_specification_v1.1.0.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sensorTypeDescriptor instead')
const SensorType$json = {
  '1': 'SensorType',
  '2': [
    {'1': 'ST_UNKNOWN', '2': 0},
    {'1': 'ST_RADAR', '2': 1},
    {'1': 'ST_LIDAR', '2': 2},
    {'1': 'ST_MONOVIDEO', '2': 3},
    {'1': 'ST_STEREOVISION', '2': 4},
    {'1': 'ST_NIGHTVISION', '2': 5},
    {'1': 'ST_ULTRASONIC', '2': 6},
    {'1': 'ST_PMD', '2': 7},
    {'1': 'ST_FUSION', '2': 8},
    {'1': 'ST_INDUCTIONLOOP', '2': 9},
    {'1': 'ST_SPHERICALCAMERA', '2': 10},
  ],
};

/// Descriptor for `SensorType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sensorTypeDescriptor = $convert.base64Decode(
    'CgpTZW5zb3JUeXBlEg4KClNUX1VOS05PV04QABIMCghTVF9SQURBUhABEgwKCFNUX0xJREFSEA'
    'ISEAoMU1RfTU9OT1ZJREVPEAMSEwoPU1RfU1RFUkVPVklTSU9OEAQSEgoOU1RfTklHSFRWSVNJ'
    'T04QBRIRCg1TVF9VTFRSQVNPTklDEAYSCgoGU1RfUE1EEAcSDQoJU1RfRlVTSU9OEAgSFAoQU1'
    'RfSU5EVUNUSU9OTE9PUBAJEhYKElNUX1NQSEVSSUNBTENBTUVSQRAK');

@$core.Deprecated('Use vehicleSubclassTypeDescriptor instead')
const VehicleSubclassType$json = {
  '1': 'VehicleSubclassType',
  '2': [
    {'1': 'VSCT_UNKNOWN', '2': 0},
    {'1': 'VSCT_PASSENGER_CAR', '2': 1},
    {'1': 'VSCT_BUS', '2': 2},
    {'1': 'VSCT_LIGHT_TRUCK', '2': 3},
    {'1': 'VSCT_HEAVY_TRUCK', '2': 4},
    {'1': 'VSCT_TRAILER', '2': 5},
    {'1': 'VSCT_SPECIAL_VEHICLES', '2': 6},
    {'1': 'VSCT_EMERGENCY_VEHICLE', '2': 7},
    {'1': 'VSCT_AGRICULTURAL', '2': 8},
    {'1': 'VSCT_GROUP', '2': 9},
  ],
};

/// Descriptor for `VehicleSubclassType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List vehicleSubclassTypeDescriptor = $convert.base64Decode(
    'ChNWZWhpY2xlU3ViY2xhc3NUeXBlEhAKDFZTQ1RfVU5LTk9XThAAEhYKElZTQ1RfUEFTU0VOR0'
    'VSX0NBUhABEgwKCFZTQ1RfQlVTEAISFAoQVlNDVF9MSUdIVF9UUlVDSxADEhQKEFZTQ1RfSEVB'
    'VllfVFJVQ0sQBBIQCgxWU0NUX1RSQUlMRVIQBRIZChVWU0NUX1NQRUNJQUxfVkVISUNMRVMQBh'
    'IaChZWU0NUX0VNRVJHRU5DWV9WRUhJQ0xFEAcSFQoRVlNDVF9BR1JJQ1VMVFVSQUwQCBIOCgpW'
    'U0NUX0dST1VQEAk=');

@$core.Deprecated('Use trainSubclassTypeDescriptor instead')
const TrainSubclassType$json = {
  '1': 'TrainSubclassType',
  '2': [
    {'1': 'TSCT_UNKNOWN', '2': 0},
    {'1': 'TSCT_TRAM', '2': 1},
    {'1': 'TSCT_OTHER_TRAIN', '2': 2},
  ],
};

/// Descriptor for `TrainSubclassType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List trainSubclassTypeDescriptor = $convert.base64Decode(
    'ChFUcmFpblN1YmNsYXNzVHlwZRIQCgxUU0NUX1VOS05PV04QABINCglUU0NUX1RSQU0QARIUCh'
    'BUU0NUX09USEVSX1RSQUlOEAI=');

@$core.Deprecated('Use motorcycleSubclassTypeDescriptor instead')
const MotorcycleSubclassType$json = {
  '1': 'MotorcycleSubclassType',
  '2': [
    {'1': 'MSCT_UNKNOWN', '2': 0},
    {'1': 'MSCT_MOPED', '2': 1},
    {'1': 'MSCT_MOTORCYCLE', '2': 2},
    {'1': 'MSCT_GROUP', '2': 3},
  ],
};

/// Descriptor for `MotorcycleSubclassType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List motorcycleSubclassTypeDescriptor =
    $convert.base64Decode(
        'ChZNb3RvcmN5Y2xlU3ViY2xhc3NUeXBlEhAKDE1TQ1RfVU5LTk9XThAAEg4KCk1TQ1RfTU9QRU'
        'QQARITCg9NU0NUX01PVE9SQ1lDTEUQAhIOCgpNU0NUX0dST1VQEAM=');

@$core.Deprecated('Use lightVehicleSubclassTypeDescriptor instead')
const LightVehicleSubclassType$json = {
  '1': 'LightVehicleSubclassType',
  '2': [
    {'1': 'LVSCT_UNKNOWN', '2': 0},
    {'1': 'LVSCT_BICYCLE', '2': 1},
    {'1': 'LVSCT_RICKSHAW', '2': 2},
    {'1': 'LVSCT_CART', '2': 3},
    {'1': 'LVSCT_KICKBOARD', '2': 4},
    {'1': 'LVSCT_GROUP', '2': 5},
  ],
};

/// Descriptor for `LightVehicleSubclassType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List lightVehicleSubclassTypeDescriptor = $convert.base64Decode(
    'ChhMaWdodFZlaGljbGVTdWJjbGFzc1R5cGUSEQoNTFZTQ1RfVU5LTk9XThAAEhEKDUxWU0NUX0'
    'JJQ1lDTEUQARISCg5MVlNDVF9SSUNLU0hBVxACEg4KCkxWU0NUX0NBUlQQAxITCg9MVlNDVF9L'
    'SUNLQk9BUkQQBBIPCgtMVlNDVF9HUk9VUBAF');

@$core.Deprecated('Use personSubclassTypeDescriptor instead')
const PersonSubclassType$json = {
  '1': 'PersonSubclassType',
  '2': [
    {'1': 'PSCT_UNKNOWN', '2': 0},
    {'1': 'PSCT_PEDESTRIAN', '2': 1},
    {'1': 'PSCT_WHEELCHAIR', '2': 2},
    {'1': 'PSCT_SENIOR_CAR', '2': 3},
    {'1': 'PSCT_STROLLER', '2': 4},
    {'1': 'PSCT_SKATES', '2': 5},
    {'1': 'PSCT_GROUP', '2': 6},
  ],
};

/// Descriptor for `PersonSubclassType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List personSubclassTypeDescriptor = $convert.base64Decode(
    'ChJQZXJzb25TdWJjbGFzc1R5cGUSEAoMUFNDVF9VTktOT1dOEAASEwoPUFNDVF9QRURFU1RSSU'
    'FOEAESEwoPUFNDVF9XSEVFTENIQUlSEAISEwoPUFNDVF9TRU5JT1JfQ0FSEAMSEQoNUFNDVF9T'
    'VFJPTExFUhAEEg8KC1BTQ1RfU0tBVEVTEAUSDgoKUFNDVF9HUk9VUBAG');

@$core.Deprecated('Use animalSubclassTypeDescriptor instead')
const AnimalSubclassType$json = {
  '1': 'AnimalSubclassType',
  '2': [
    {'1': 'ASCT_UNKNOWN', '2': 0},
  ],
};

/// Descriptor for `AnimalSubclassType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List animalSubclassTypeDescriptor = $convert
    .base64Decode('ChJBbmltYWxTdWJjbGFzc1R5cGUSEAoMQVNDVF9VTktOT1dOEAA=');

@$core.Deprecated('Use nfoSubclassTypeDescriptor instead')
const NfoSubclassType$json = {
  '1': 'NfoSubclassType',
  '2': [
    {'1': 'NFOSCT_UNKNOWN', '2': 0},
  ],
};

/// Descriptor for `NfoSubclassType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List nfoSubclassTypeDescriptor = $convert
    .base64Decode('Cg9OZm9TdWJjbGFzc1R5cGUSEgoOTkZPU0NUX1VOS05PV04QAA==');

@$core.Deprecated('Use foSubclassTypeDescriptor instead')
const FoSubclassType$json = {
  '1': 'FoSubclassType',
  '2': [
    {'1': 'FOSCT_UNKNOWN', '2': 0},
  ],
};

/// Descriptor for `FoSubclassType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List foSubclassTypeDescriptor =
    $convert.base64Decode('Cg5Gb1N1YmNsYXNzVHlwZRIRCg1GT1NDVF9VTktOT1dOEAA=');

@$core.Deprecated('Use refPointDescriptor instead')
const RefPoint$json = {
  '1': 'RefPoint',
  '2': [
    {'1': 'RP_UNKNOWN', '2': 0},
    {'1': 'RP_CENTER_BOTTOM', '2': 1},
    {'1': 'RP_FRONT_MIDWIDTH_BOTTOM', '2': 2},
    {'1': 'RP_FRONT_RIGHT_BOTTOM', '2': 3},
    {'1': 'RP_MIDLENGTH_RIGHT_BOTTOM', '2': 4},
    {'1': 'RP_REAR_RIGHT_BOTTOM', '2': 5},
    {'1': 'RP_REAR_MIDWIDTH_BOTTOM', '2': 6},
    {'1': 'RP_REAR_LEFT_BOTTOM', '2': 7},
    {'1': 'RP_MIDLENGTH_LEFT_BOTTOM', '2': 8},
    {'1': 'RP_FRONT_LEFT_BOTTOM', '2': 9},
  ],
};

/// Descriptor for `RefPoint`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List refPointDescriptor = $convert.base64Decode(
    'CghSZWZQb2ludBIOCgpSUF9VTktOT1dOEAASFAoQUlBfQ0VOVEVSX0JPVFRPTRABEhwKGFJQX0'
    'ZST05UX01JRFdJRFRIX0JPVFRPTRACEhkKFVJQX0ZST05UX1JJR0hUX0JPVFRPTRADEh0KGVJQ'
    'X01JRExFTkdUSF9SSUdIVF9CT1RUT00QBBIYChRSUF9SRUFSX1JJR0hUX0JPVFRPTRAFEhsKF1'
    'JQX1JFQVJfTUlEV0lEVEhfQk9UVE9NEAYSFwoTUlBfUkVBUl9MRUZUX0JPVFRPTRAHEhwKGFJQ'
    'X01JRExFTkdUSF9MRUZUX0JPVFRPTRAIEhgKFFJQX0ZST05UX0xFRlRfQk9UVE9NEAk=');

@$core.Deprecated('Use sensingMessageDescriptor instead')
const SensingMessage$json = {
  '1': 'SensingMessage',
  '2': [
    {'1': 'message_id', '3': 1, '4': 1, '5': 13, '10': 'messageId'},
    {'1': 'protocol_version', '3': 2, '4': 1, '5': 13, '10': 'protocolVersion'},
    {'1': 'message_counter', '3': 3, '4': 1, '5': 13, '10': 'messageCounter'},
    {'1': 'sensing_time', '3': 4, '4': 1, '5': 4, '10': 'sensingTime'},
    {
      '1': 'error_notification',
      '3': 5,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'errorNotification',
      '17': true
    },
    {
      '1': 'error_code',
      '3': 6,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'errorCode',
      '17': true
    },
    {
      '1': 'sensor_info',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.SensorInformation',
      '10': 'sensorInfo'
    },
    {
      '1': 'object_infos',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.ObjectInformation',
      '10': 'objectInfos'
    },
    {
      '1': 'freespace_infos',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.PerceivedFreeSpaceInformation',
      '10': 'freespaceInfos'
    },
  ],
  '8': [
    {'1': '_error_notification'},
    {'1': '_error_code'},
  ],
};

/// Descriptor for `SensingMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensingMessageDescriptor = $convert.base64Decode(
    'Cg5TZW5zaW5nTWVzc2FnZRIdCgptZXNzYWdlX2lkGAEgASgNUgltZXNzYWdlSWQSKQoQcHJvdG'
    '9jb2xfdmVyc2lvbhgCIAEoDVIPcHJvdG9jb2xWZXJzaW9uEicKD21lc3NhZ2VfY291bnRlchgD'
    'IAEoDVIObWVzc2FnZUNvdW50ZXISIQoMc2Vuc2luZ190aW1lGAQgASgEUgtzZW5zaW5nVGltZR'
    'IyChJlcnJvcl9ub3RpZmljYXRpb24YBSABKA1IAFIRZXJyb3JOb3RpZmljYXRpb26IAQESIgoK'
    'ZXJyb3JfY29kZRgGIAEoDUgBUgllcnJvckNvZGWIAQESMwoLc2Vuc29yX2luZm8YByADKAsyEi'
    '5TZW5zb3JJbmZvcm1hdGlvblIKc2Vuc29ySW5mbxI1CgxvYmplY3RfaW5mb3MYCCADKAsyEi5P'
    'YmplY3RJbmZvcm1hdGlvblILb2JqZWN0SW5mb3MSRwoPZnJlZXNwYWNlX2luZm9zGAkgAygLMh'
    '4uUGVyY2VpdmVkRnJlZVNwYWNlSW5mb3JtYXRpb25SDmZyZWVzcGFjZUluZm9zQhUKE19lcnJv'
    'cl9ub3RpZmljYXRpb25CDQoLX2Vycm9yX2NvZGU=');

@$core.Deprecated('Use sensorInformationDescriptor instead')
const SensorInformation$json = {
  '1': 'SensorInformation',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.SensorType',
      '9': 0,
      '10': 'type',
      '17': true
    },
    {'1': 'latitude', '3': 2, '4': 1, '5': 17, '10': 'latitude'},
    {'1': 'longitude', '3': 3, '4': 1, '5': 17, '10': 'longitude'},
    {'1': 'altitude', '3': 4, '4': 1, '5': 17, '10': 'altitude'},
    {
      '1': 'detect_capabilities',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.DetectCapability',
      '10': 'detectCapabilities'
    },
    {'1': 'sensor_status', '3': 6, '4': 1, '5': 13, '10': 'sensorStatus'},
  ],
  '8': [
    {'1': '_type'},
  ],
};

/// Descriptor for `SensorInformation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorInformationDescriptor = $convert.base64Decode(
    'ChFTZW5zb3JJbmZvcm1hdGlvbhIkCgR0eXBlGAEgASgOMgsuU2Vuc29yVHlwZUgAUgR0eXBliA'
    'EBEhoKCGxhdGl0dWRlGAIgASgRUghsYXRpdHVkZRIcCglsb25naXR1ZGUYAyABKBFSCWxvbmdp'
    'dHVkZRIaCghhbHRpdHVkZRgEIAEoEVIIYWx0aXR1ZGUSQgoTZGV0ZWN0X2NhcGFiaWxpdGllcx'
    'gFIAMoCzIRLkRldGVjdENhcGFiaWxpdHlSEmRldGVjdENhcGFiaWxpdGllcxIjCg1zZW5zb3Jf'
    'c3RhdHVzGAYgASgNUgxzZW5zb3JTdGF0dXNCBwoFX3R5cGU=');

@$core.Deprecated('Use detectCapabilityDescriptor instead')
const DetectCapability$json = {
  '1': 'DetectCapability',
  '2': [
    {
      '1': 'detectable_classes',
      '3': 1,
      '4': 1,
      '5': 13,
      '10': 'detectableClasses'
    },
    {
      '1': 'poly_points',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.OffsetPointXY',
      '10': 'polyPoints'
    },
    {
      '1': 'confidence',
      '3': 3,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'confidence',
      '17': true
    },
    {
      '1': 'detectable_size',
      '3': 4,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'detectableSize',
      '17': true
    },
  ],
  '8': [
    {'1': '_confidence'},
    {'1': '_detectable_size'},
  ],
};

/// Descriptor for `DetectCapability`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List detectCapabilityDescriptor = $convert.base64Decode(
    'ChBEZXRlY3RDYXBhYmlsaXR5Ei0KEmRldGVjdGFibGVfY2xhc3NlcxgBIAEoDVIRZGV0ZWN0YW'
    'JsZUNsYXNzZXMSLwoLcG9seV9wb2ludHMYAiADKAsyDi5PZmZzZXRQb2ludFhZUgpwb2x5UG9p'
    'bnRzEiMKCmNvbmZpZGVuY2UYAyABKA1IAFIKY29uZmlkZW5jZYgBARIsCg9kZXRlY3RhYmxlX3'
    'NpemUYBCABKA1IAVIOZGV0ZWN0YWJsZVNpemWIAQFCDQoLX2NvbmZpZGVuY2VCEgoQX2RldGVj'
    'dGFibGVfc2l6ZQ==');

@$core.Deprecated('Use offsetPointXYDescriptor instead')
const OffsetPointXY$json = {
  '1': 'OffsetPointXY',
  '2': [
    {'1': 'dx', '3': 1, '4': 1, '5': 17, '10': 'dx'},
    {'1': 'dy', '3': 2, '4': 1, '5': 17, '10': 'dy'},
  ],
};

/// Descriptor for `OffsetPointXY`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offsetPointXYDescriptor = $convert.base64Decode(
    'Cg1PZmZzZXRQb2ludFhZEg4KAmR4GAEgASgRUgJkeBIOCgJkeRgCIAEoEVICZHk=');

@$core.Deprecated('Use objectInformationDescriptor instead')
const ObjectInformation$json = {
  '1': 'ObjectInformation',
  '2': [
    {'1': 'object_id', '3': 1, '4': 1, '5': 13, '10': 'objectId'},
    {
      '1': 'time_of_measurement',
      '3': 2,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'timeOfMeasurement',
      '17': true
    },
    {
      '1': 'object_classes',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.ObjectClass',
      '10': 'objectClasses'
    },
    {
      '1': 'confidence',
      '3': 4,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'confidence',
      '17': true
    },
    {
      '1': 'position',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Position',
      '10': 'position'
    },
    {
      '1': 'ref_point',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.RefPoint',
      '9': 2,
      '10': 'refPoint',
      '17': true
    },
    {
      '1': 'heading',
      '3': 7,
      '4': 1,
      '5': 13,
      '9': 3,
      '10': 'heading',
      '17': true
    },
    {
      '1': 'heading_accuracy',
      '3': 8,
      '4': 1,
      '5': 13,
      '9': 4,
      '10': 'headingAccuracy',
      '17': true
    },
    {'1': 'speed', '3': 9, '4': 1, '5': 17, '9': 5, '10': 'speed', '17': true},
    {
      '1': 'speed_accuracy',
      '3': 10,
      '4': 1,
      '5': 13,
      '9': 6,
      '10': 'speedAccuracy',
      '17': true
    },
    {
      '1': 'static_status',
      '3': 11,
      '4': 1,
      '5': 13,
      '9': 7,
      '10': 'staticStatus',
      '17': true
    },
    {
      '1': 'tracking_status',
      '3': 12,
      '4': 1,
      '5': 13,
      '9': 8,
      '10': 'trackingStatus',
      '17': true
    },
    {
      '1': 'detection_count',
      '3': 13,
      '4': 1,
      '5': 13,
      '9': 9,
      '10': 'detectionCount',
      '17': true
    },
    {
      '1': 'lost_count',
      '3': 14,
      '4': 1,
      '5': 13,
      '9': 10,
      '10': 'lostCount',
      '17': true
    },
    {
      '1': 'object_age',
      '3': 15,
      '4': 1,
      '5': 13,
      '9': 11,
      '10': 'objectAge',
      '17': true
    },
    {
      '1': 'yaw_rate',
      '3': 16,
      '4': 1,
      '5': 17,
      '9': 12,
      '10': 'yawRate',
      '17': true
    },
    {
      '1': 'yaw_rate_accuracy',
      '3': 17,
      '4': 1,
      '5': 13,
      '9': 13,
      '10': 'yawRateAccuracy',
      '17': true
    },
    {
      '1': 'acceleration',
      '3': 18,
      '4': 1,
      '5': 17,
      '9': 14,
      '10': 'acceleration',
      '17': true
    },
    {
      '1': 'acceleration_accuracy',
      '3': 19,
      '4': 1,
      '5': 13,
      '9': 15,
      '10': 'accelerationAccuracy',
      '17': true
    },
    {
      '1': 'orientation',
      '3': 20,
      '4': 1,
      '5': 13,
      '9': 16,
      '10': 'orientation',
      '17': true
    },
    {
      '1': 'orientation_accuracy',
      '3': 21,
      '4': 1,
      '5': 13,
      '9': 17,
      '10': 'orientationAccuracy',
      '17': true
    },
    {
      '1': 'length',
      '3': 22,
      '4': 1,
      '5': 13,
      '9': 18,
      '10': 'length',
      '17': true
    },
    {
      '1': 'length_accuracy',
      '3': 23,
      '4': 1,
      '5': 13,
      '9': 19,
      '10': 'lengthAccuracy',
      '17': true
    },
    {
      '1': 'width',
      '3': 24,
      '4': 1,
      '5': 13,
      '9': 20,
      '10': 'width',
      '17': true
    },
    {
      '1': 'width_accuracy',
      '3': 25,
      '4': 1,
      '5': 13,
      '9': 21,
      '10': 'widthAccuracy',
      '17': true
    },
    {
      '1': 'height',
      '3': 26,
      '4': 1,
      '5': 13,
      '9': 22,
      '10': 'height',
      '17': true
    },
    {
      '1': 'height_accuracy',
      '3': 27,
      '4': 1,
      '5': 13,
      '9': 23,
      '10': 'heightAccuracy',
      '17': true
    },
  ],
  '8': [
    {'1': '_time_of_measurement'},
    {'1': '_confidence'},
    {'1': '_ref_point'},
    {'1': '_heading'},
    {'1': '_heading_accuracy'},
    {'1': '_speed'},
    {'1': '_speed_accuracy'},
    {'1': '_static_status'},
    {'1': '_tracking_status'},
    {'1': '_detection_count'},
    {'1': '_lost_count'},
    {'1': '_object_age'},
    {'1': '_yaw_rate'},
    {'1': '_yaw_rate_accuracy'},
    {'1': '_acceleration'},
    {'1': '_acceleration_accuracy'},
    {'1': '_orientation'},
    {'1': '_orientation_accuracy'},
    {'1': '_length'},
    {'1': '_length_accuracy'},
    {'1': '_width'},
    {'1': '_width_accuracy'},
    {'1': '_height'},
    {'1': '_height_accuracy'},
  ],
};

/// Descriptor for `ObjectInformation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectInformationDescriptor = $convert.base64Decode(
    'ChFPYmplY3RJbmZvcm1hdGlvbhIbCglvYmplY3RfaWQYASABKA1SCG9iamVjdElkEjMKE3RpbW'
    'Vfb2ZfbWVhc3VyZW1lbnQYAiABKBFIAFIRdGltZU9mTWVhc3VyZW1lbnSIAQESMwoOb2JqZWN0'
    'X2NsYXNzZXMYAyADKAsyDC5PYmplY3RDbGFzc1INb2JqZWN0Q2xhc3NlcxIjCgpjb25maWRlbm'
    'NlGAQgASgNSAFSCmNvbmZpZGVuY2WIAQESJQoIcG9zaXRpb24YBSABKAsyCS5Qb3NpdGlvblII'
    'cG9zaXRpb24SKwoJcmVmX3BvaW50GAYgASgOMgkuUmVmUG9pbnRIAlIIcmVmUG9pbnSIAQESHQ'
    'oHaGVhZGluZxgHIAEoDUgDUgdoZWFkaW5niAEBEi4KEGhlYWRpbmdfYWNjdXJhY3kYCCABKA1I'
    'BFIPaGVhZGluZ0FjY3VyYWN5iAEBEhkKBXNwZWVkGAkgASgRSAVSBXNwZWVkiAEBEioKDnNwZW'
    'VkX2FjY3VyYWN5GAogASgNSAZSDXNwZWVkQWNjdXJhY3mIAQESKAoNc3RhdGljX3N0YXR1cxgL'
    'IAEoDUgHUgxzdGF0aWNTdGF0dXOIAQESLAoPdHJhY2tpbmdfc3RhdHVzGAwgASgNSAhSDnRyYW'
    'NraW5nU3RhdHVziAEBEiwKD2RldGVjdGlvbl9jb3VudBgNIAEoDUgJUg5kZXRlY3Rpb25Db3Vu'
    'dIgBARIiCgpsb3N0X2NvdW50GA4gASgNSApSCWxvc3RDb3VudIgBARIiCgpvYmplY3RfYWdlGA'
    '8gASgNSAtSCW9iamVjdEFnZYgBARIeCgh5YXdfcmF0ZRgQIAEoEUgMUgd5YXdSYXRliAEBEi8K'
    'EXlhd19yYXRlX2FjY3VyYWN5GBEgASgNSA1SD3lhd1JhdGVBY2N1cmFjeYgBARInCgxhY2NlbG'
    'VyYXRpb24YEiABKBFIDlIMYWNjZWxlcmF0aW9uiAEBEjgKFWFjY2VsZXJhdGlvbl9hY2N1cmFj'
    'eRgTIAEoDUgPUhRhY2NlbGVyYXRpb25BY2N1cmFjeYgBARIlCgtvcmllbnRhdGlvbhgUIAEoDU'
    'gQUgtvcmllbnRhdGlvbogBARI2ChRvcmllbnRhdGlvbl9hY2N1cmFjeRgVIAEoDUgRUhNvcmll'
    'bnRhdGlvbkFjY3VyYWN5iAEBEhsKBmxlbmd0aBgWIAEoDUgSUgZsZW5ndGiIAQESLAoPbGVuZ3'
    'RoX2FjY3VyYWN5GBcgASgNSBNSDmxlbmd0aEFjY3VyYWN5iAEBEhkKBXdpZHRoGBggASgNSBRS'
    'BXdpZHRoiAEBEioKDndpZHRoX2FjY3VyYWN5GBkgASgNSBVSDXdpZHRoQWNjdXJhY3mIAQESGw'
    'oGaGVpZ2h0GBogASgNSBZSBmhlaWdodIgBARIsCg9oZWlnaHRfYWNjdXJhY3kYGyABKA1IF1IO'
    'aGVpZ2h0QWNjdXJhY3mIAQFCFgoUX3RpbWVfb2ZfbWVhc3VyZW1lbnRCDQoLX2NvbmZpZGVuY2'
    'VCDAoKX3JlZl9wb2ludEIKCghfaGVhZGluZ0ITChFfaGVhZGluZ19hY2N1cmFjeUIICgZfc3Bl'
    'ZWRCEQoPX3NwZWVkX2FjY3VyYWN5QhAKDl9zdGF0aWNfc3RhdHVzQhIKEF90cmFja2luZ19zdG'
    'F0dXNCEgoQX2RldGVjdGlvbl9jb3VudEINCgtfbG9zdF9jb3VudEINCgtfb2JqZWN0X2FnZUIL'
    'CglfeWF3X3JhdGVCFAoSX3lhd19yYXRlX2FjY3VyYWN5Qg8KDV9hY2NlbGVyYXRpb25CGAoWX2'
    'FjY2VsZXJhdGlvbl9hY2N1cmFjeUIOCgxfb3JpZW50YXRpb25CFwoVX29yaWVudGF0aW9uX2Fj'
    'Y3VyYWN5QgkKB19sZW5ndGhCEgoQX2xlbmd0aF9hY2N1cmFjeUIICgZfd2lkdGhCEQoPX3dpZH'
    'RoX2FjY3VyYWN5QgkKB19oZWlnaHRCEgoQX2hlaWdodF9hY2N1cmFjeQ==');

@$core.Deprecated('Use objectClassDescriptor instead')
const ObjectClass$json = {
  '1': 'ObjectClass',
  '2': [
    {
      '1': 'vehicle_subclass_type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.VehicleSubclassType',
      '9': 0,
      '10': 'vehicleSubclassType'
    },
    {
      '1': 'train_subclass_type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.TrainSubclassType',
      '9': 0,
      '10': 'trainSubclassType'
    },
    {
      '1': 'motorcycle_subclass_type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.MotorcycleSubclassType',
      '9': 0,
      '10': 'motorcycleSubclassType'
    },
    {
      '1': 'light_vehicle_subclass_type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.LightVehicleSubclassType',
      '9': 0,
      '10': 'lightVehicleSubclassType'
    },
    {
      '1': 'person_subclass_type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.PersonSubclassType',
      '9': 0,
      '10': 'personSubclassType'
    },
    {
      '1': 'animal_subclass_type',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.AnimalSubclassType',
      '9': 0,
      '10': 'animalSubclassType'
    },
    {
      '1': 'nfo_subclass_type',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.NfoSubclassType',
      '9': 0,
      '10': 'nfoSubclassType'
    },
    {
      '1': 'fo_subclass_type',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.FoSubclassType',
      '9': 0,
      '10': 'foSubclassType'
    },
    {
      '1': 'class_confidence',
      '3': 9,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'classConfidence',
      '17': true
    },
    {
      '1': 'subclass_confidence',
      '3': 10,
      '4': 1,
      '5': 13,
      '9': 2,
      '10': 'subclassConfidence',
      '17': true
    },
  ],
  '8': [
    {'1': 'subclass_type'},
    {'1': '_class_confidence'},
    {'1': '_subclass_confidence'},
  ],
};

/// Descriptor for `ObjectClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectClassDescriptor = $convert.base64Decode(
    'CgtPYmplY3RDbGFzcxJKChV2ZWhpY2xlX3N1YmNsYXNzX3R5cGUYASABKA4yFC5WZWhpY2xlU3'
    'ViY2xhc3NUeXBlSABSE3ZlaGljbGVTdWJjbGFzc1R5cGUSRAoTdHJhaW5fc3ViY2xhc3NfdHlw'
    'ZRgCIAEoDjISLlRyYWluU3ViY2xhc3NUeXBlSABSEXRyYWluU3ViY2xhc3NUeXBlElMKGG1vdG'
    '9yY3ljbGVfc3ViY2xhc3NfdHlwZRgDIAEoDjIXLk1vdG9yY3ljbGVTdWJjbGFzc1R5cGVIAFIW'
    'bW90b3JjeWNsZVN1YmNsYXNzVHlwZRJaChtsaWdodF92ZWhpY2xlX3N1YmNsYXNzX3R5cGUYBC'
    'ABKA4yGS5MaWdodFZlaGljbGVTdWJjbGFzc1R5cGVIAFIYbGlnaHRWZWhpY2xlU3ViY2xhc3NU'
    'eXBlEkcKFHBlcnNvbl9zdWJjbGFzc190eXBlGAUgASgOMhMuUGVyc29uU3ViY2xhc3NUeXBlSA'
    'BSEnBlcnNvblN1YmNsYXNzVHlwZRJHChRhbmltYWxfc3ViY2xhc3NfdHlwZRgGIAEoDjITLkFu'
    'aW1hbFN1YmNsYXNzVHlwZUgAUhJhbmltYWxTdWJjbGFzc1R5cGUSPgoRbmZvX3N1YmNsYXNzX3'
    'R5cGUYByABKA4yEC5OZm9TdWJjbGFzc1R5cGVIAFIPbmZvU3ViY2xhc3NUeXBlEjsKEGZvX3N1'
    'YmNsYXNzX3R5cGUYCCABKA4yDy5Gb1N1YmNsYXNzVHlwZUgAUg5mb1N1YmNsYXNzVHlwZRIuCh'
    'BjbGFzc19jb25maWRlbmNlGAkgASgNSAFSD2NsYXNzQ29uZmlkZW5jZYgBARI0ChNzdWJjbGFz'
    'c19jb25maWRlbmNlGAogASgNSAJSEnN1YmNsYXNzQ29uZmlkZW5jZYgBAUIPCg1zdWJjbGFzc1'
    '90eXBlQhMKEV9jbGFzc19jb25maWRlbmNlQhYKFF9zdWJjbGFzc19jb25maWRlbmNl');

@$core.Deprecated('Use positionDescriptor instead')
const Position$json = {
  '1': 'Position',
  '2': [
    {'1': 'latitude', '3': 1, '4': 1, '5': 17, '10': 'latitude'},
    {'1': 'longitude', '3': 2, '4': 1, '5': 17, '10': 'longitude'},
    {'1': 'altitude', '3': 3, '4': 1, '5': 17, '10': 'altitude'},
    {
      '1': 'semi_major_axis_length',
      '3': 4,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'semiMajorAxisLength',
      '17': true
    },
    {
      '1': 'semi_minor_axis_length',
      '3': 5,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'semiMinorAxisLength',
      '17': true
    },
    {
      '1': 'semi_major_orientation',
      '3': 6,
      '4': 1,
      '5': 13,
      '9': 2,
      '10': 'semiMajorOrientation',
      '17': true
    },
    {
      '1': 'altitude_accuracy',
      '3': 7,
      '4': 1,
      '5': 13,
      '9': 3,
      '10': 'altitudeAccuracy',
      '17': true
    },
  ],
  '8': [
    {'1': '_semi_major_axis_length'},
    {'1': '_semi_minor_axis_length'},
    {'1': '_semi_major_orientation'},
    {'1': '_altitude_accuracy'},
  ],
};

/// Descriptor for `Position`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionDescriptor = $convert.base64Decode(
    'CghQb3NpdGlvbhIaCghsYXRpdHVkZRgBIAEoEVIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGAIgAS'
    'gRUglsb25naXR1ZGUSGgoIYWx0aXR1ZGUYAyABKBFSCGFsdGl0dWRlEjgKFnNlbWlfbWFqb3Jf'
    'YXhpc19sZW5ndGgYBCABKA1IAFITc2VtaU1ham9yQXhpc0xlbmd0aIgBARI4ChZzZW1pX21pbm'
    '9yX2F4aXNfbGVuZ3RoGAUgASgNSAFSE3NlbWlNaW5vckF4aXNMZW5ndGiIAQESOQoWc2VtaV9t'
    'YWpvcl9vcmllbnRhdGlvbhgGIAEoDUgCUhRzZW1pTWFqb3JPcmllbnRhdGlvbogBARIwChFhbH'
    'RpdHVkZV9hY2N1cmFjeRgHIAEoDUgDUhBhbHRpdHVkZUFjY3VyYWN5iAEBQhkKF19zZW1pX21h'
    'am9yX2F4aXNfbGVuZ3RoQhkKF19zZW1pX21pbm9yX2F4aXNfbGVuZ3RoQhkKF19zZW1pX21ham'
    '9yX29yaWVudGF0aW9uQhQKEl9hbHRpdHVkZV9hY2N1cmFjeQ==');

@$core.Deprecated('Use perceivedFreeSpaceInformationDescriptor instead')
const PerceivedFreeSpaceInformation$json = {
  '1': 'PerceivedFreeSpaceInformation',
  '2': [
    {
      '1': 'time_of_measurement',
      '3': 1,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'timeOfMeasurement',
      '17': true
    },
    {
      '1': 'position',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Position',
      '10': 'position'
    },
    {
      '1': 'poly_points',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.OffsetPointXY',
      '10': 'polyPoints'
    },
    {
      '1': 'confidence',
      '3': 4,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'confidence',
      '17': true
    },
    {
      '1': 'detectable_size',
      '3': 5,
      '4': 1,
      '5': 13,
      '9': 2,
      '10': 'detectableSize',
      '17': true
    },
  ],
  '8': [
    {'1': '_time_of_measurement'},
    {'1': '_confidence'},
    {'1': '_detectable_size'},
  ],
};

/// Descriptor for `PerceivedFreeSpaceInformation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List perceivedFreeSpaceInformationDescriptor = $convert.base64Decode(
    'Ch1QZXJjZWl2ZWRGcmVlU3BhY2VJbmZvcm1hdGlvbhIzChN0aW1lX29mX21lYXN1cmVtZW50GA'
    'EgASgRSABSEXRpbWVPZk1lYXN1cmVtZW50iAEBEiUKCHBvc2l0aW9uGAIgASgLMgkuUG9zaXRp'
    'b25SCHBvc2l0aW9uEi8KC3BvbHlfcG9pbnRzGAMgAygLMg4uT2Zmc2V0UG9pbnRYWVIKcG9seV'
    'BvaW50cxIjCgpjb25maWRlbmNlGAQgASgNSAFSCmNvbmZpZGVuY2WIAQESLAoPZGV0ZWN0YWJs'
    'ZV9zaXplGAUgASgNSAJSDmRldGVjdGFibGVTaXpliAEBQhYKFF90aW1lX29mX21lYXN1cmVtZW'
    '50Qg0KC19jb25maWRlbmNlQhIKEF9kZXRlY3RhYmxlX3NpemU=');
