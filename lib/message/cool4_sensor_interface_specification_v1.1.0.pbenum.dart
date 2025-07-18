// This is a generated file - do not edit.
//
// Generated from cool4_sensor_interface_specification_v1.1.0.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SensorType extends $pb.ProtobufEnum {
  static const SensorType ST_UNKNOWN =
      SensorType._(0, _omitEnumNames ? '' : 'ST_UNKNOWN');
  static const SensorType ST_RADAR =
      SensorType._(1, _omitEnumNames ? '' : 'ST_RADAR');
  static const SensorType ST_LIDAR =
      SensorType._(2, _omitEnumNames ? '' : 'ST_LIDAR');
  static const SensorType ST_MONOVIDEO =
      SensorType._(3, _omitEnumNames ? '' : 'ST_MONOVIDEO');
  static const SensorType ST_STEREOVISION =
      SensorType._(4, _omitEnumNames ? '' : 'ST_STEREOVISION');
  static const SensorType ST_NIGHTVISION =
      SensorType._(5, _omitEnumNames ? '' : 'ST_NIGHTVISION');
  static const SensorType ST_ULTRASONIC =
      SensorType._(6, _omitEnumNames ? '' : 'ST_ULTRASONIC');
  static const SensorType ST_PMD =
      SensorType._(7, _omitEnumNames ? '' : 'ST_PMD');
  static const SensorType ST_FUSION =
      SensorType._(8, _omitEnumNames ? '' : 'ST_FUSION');
  static const SensorType ST_INDUCTIONLOOP =
      SensorType._(9, _omitEnumNames ? '' : 'ST_INDUCTIONLOOP');
  static const SensorType ST_SPHERICALCAMERA =
      SensorType._(10, _omitEnumNames ? '' : 'ST_SPHERICALCAMERA');

  static const $core.List<SensorType> values = <SensorType>[
    ST_UNKNOWN,
    ST_RADAR,
    ST_LIDAR,
    ST_MONOVIDEO,
    ST_STEREOVISION,
    ST_NIGHTVISION,
    ST_ULTRASONIC,
    ST_PMD,
    ST_FUSION,
    ST_INDUCTIONLOOP,
    ST_SPHERICALCAMERA,
  ];

  static final $core.List<SensorType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 10);
  static SensorType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SensorType._(super.value, super.name);
}

class VehicleSubclassType extends $pb.ProtobufEnum {
  static const VehicleSubclassType VSCT_UNKNOWN =
      VehicleSubclassType._(0, _omitEnumNames ? '' : 'VSCT_UNKNOWN');
  static const VehicleSubclassType VSCT_PASSENGER_CAR =
      VehicleSubclassType._(1, _omitEnumNames ? '' : 'VSCT_PASSENGER_CAR');
  static const VehicleSubclassType VSCT_BUS =
      VehicleSubclassType._(2, _omitEnumNames ? '' : 'VSCT_BUS');
  static const VehicleSubclassType VSCT_LIGHT_TRUCK =
      VehicleSubclassType._(3, _omitEnumNames ? '' : 'VSCT_LIGHT_TRUCK');
  static const VehicleSubclassType VSCT_HEAVY_TRUCK =
      VehicleSubclassType._(4, _omitEnumNames ? '' : 'VSCT_HEAVY_TRUCK');
  static const VehicleSubclassType VSCT_TRAILER =
      VehicleSubclassType._(5, _omitEnumNames ? '' : 'VSCT_TRAILER');
  static const VehicleSubclassType VSCT_SPECIAL_VEHICLES =
      VehicleSubclassType._(6, _omitEnumNames ? '' : 'VSCT_SPECIAL_VEHICLES');
  static const VehicleSubclassType VSCT_EMERGENCY_VEHICLE =
      VehicleSubclassType._(7, _omitEnumNames ? '' : 'VSCT_EMERGENCY_VEHICLE');
  static const VehicleSubclassType VSCT_AGRICULTURAL =
      VehicleSubclassType._(8, _omitEnumNames ? '' : 'VSCT_AGRICULTURAL');
  static const VehicleSubclassType VSCT_GROUP =
      VehicleSubclassType._(9, _omitEnumNames ? '' : 'VSCT_GROUP');

  static const $core.List<VehicleSubclassType> values = <VehicleSubclassType>[
    VSCT_UNKNOWN,
    VSCT_PASSENGER_CAR,
    VSCT_BUS,
    VSCT_LIGHT_TRUCK,
    VSCT_HEAVY_TRUCK,
    VSCT_TRAILER,
    VSCT_SPECIAL_VEHICLES,
    VSCT_EMERGENCY_VEHICLE,
    VSCT_AGRICULTURAL,
    VSCT_GROUP,
  ];

  static final $core.List<VehicleSubclassType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static VehicleSubclassType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const VehicleSubclassType._(super.value, super.name);
}

class TrainSubclassType extends $pb.ProtobufEnum {
  static const TrainSubclassType TSCT_UNKNOWN =
      TrainSubclassType._(0, _omitEnumNames ? '' : 'TSCT_UNKNOWN');
  static const TrainSubclassType TSCT_TRAM =
      TrainSubclassType._(1, _omitEnumNames ? '' : 'TSCT_TRAM');
  static const TrainSubclassType TSCT_OTHER_TRAIN =
      TrainSubclassType._(2, _omitEnumNames ? '' : 'TSCT_OTHER_TRAIN');

  static const $core.List<TrainSubclassType> values = <TrainSubclassType>[
    TSCT_UNKNOWN,
    TSCT_TRAM,
    TSCT_OTHER_TRAIN,
  ];

  static final $core.List<TrainSubclassType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TrainSubclassType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TrainSubclassType._(super.value, super.name);
}

class MotorcycleSubclassType extends $pb.ProtobufEnum {
  static const MotorcycleSubclassType MSCT_UNKNOWN =
      MotorcycleSubclassType._(0, _omitEnumNames ? '' : 'MSCT_UNKNOWN');
  static const MotorcycleSubclassType MSCT_MOPED =
      MotorcycleSubclassType._(1, _omitEnumNames ? '' : 'MSCT_MOPED');
  static const MotorcycleSubclassType MSCT_MOTORCYCLE =
      MotorcycleSubclassType._(2, _omitEnumNames ? '' : 'MSCT_MOTORCYCLE');
  static const MotorcycleSubclassType MSCT_GROUP =
      MotorcycleSubclassType._(3, _omitEnumNames ? '' : 'MSCT_GROUP');

  static const $core.List<MotorcycleSubclassType> values =
      <MotorcycleSubclassType>[
    MSCT_UNKNOWN,
    MSCT_MOPED,
    MSCT_MOTORCYCLE,
    MSCT_GROUP,
  ];

  static final $core.List<MotorcycleSubclassType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static MotorcycleSubclassType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MotorcycleSubclassType._(super.value, super.name);
}

class LightVehicleSubclassType extends $pb.ProtobufEnum {
  static const LightVehicleSubclassType LVSCT_UNKNOWN =
      LightVehicleSubclassType._(0, _omitEnumNames ? '' : 'LVSCT_UNKNOWN');
  static const LightVehicleSubclassType LVSCT_BICYCLE =
      LightVehicleSubclassType._(1, _omitEnumNames ? '' : 'LVSCT_BICYCLE');
  static const LightVehicleSubclassType LVSCT_RICKSHAW =
      LightVehicleSubclassType._(2, _omitEnumNames ? '' : 'LVSCT_RICKSHAW');
  static const LightVehicleSubclassType LVSCT_CART =
      LightVehicleSubclassType._(3, _omitEnumNames ? '' : 'LVSCT_CART');
  static const LightVehicleSubclassType LVSCT_KICKBOARD =
      LightVehicleSubclassType._(4, _omitEnumNames ? '' : 'LVSCT_KICKBOARD');
  static const LightVehicleSubclassType LVSCT_GROUP =
      LightVehicleSubclassType._(5, _omitEnumNames ? '' : 'LVSCT_GROUP');

  static const $core.List<LightVehicleSubclassType> values =
      <LightVehicleSubclassType>[
    LVSCT_UNKNOWN,
    LVSCT_BICYCLE,
    LVSCT_RICKSHAW,
    LVSCT_CART,
    LVSCT_KICKBOARD,
    LVSCT_GROUP,
  ];

  static final $core.List<LightVehicleSubclassType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static LightVehicleSubclassType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LightVehicleSubclassType._(super.value, super.name);
}

class PersonSubclassType extends $pb.ProtobufEnum {
  static const PersonSubclassType PSCT_UNKNOWN =
      PersonSubclassType._(0, _omitEnumNames ? '' : 'PSCT_UNKNOWN');
  static const PersonSubclassType PSCT_PEDESTRIAN =
      PersonSubclassType._(1, _omitEnumNames ? '' : 'PSCT_PEDESTRIAN');
  static const PersonSubclassType PSCT_WHEELCHAIR =
      PersonSubclassType._(2, _omitEnumNames ? '' : 'PSCT_WHEELCHAIR');
  static const PersonSubclassType PSCT_SENIOR_CAR =
      PersonSubclassType._(3, _omitEnumNames ? '' : 'PSCT_SENIOR_CAR');
  static const PersonSubclassType PSCT_STROLLER =
      PersonSubclassType._(4, _omitEnumNames ? '' : 'PSCT_STROLLER');
  static const PersonSubclassType PSCT_SKATES =
      PersonSubclassType._(5, _omitEnumNames ? '' : 'PSCT_SKATES');
  static const PersonSubclassType PSCT_GROUP =
      PersonSubclassType._(6, _omitEnumNames ? '' : 'PSCT_GROUP');

  static const $core.List<PersonSubclassType> values = <PersonSubclassType>[
    PSCT_UNKNOWN,
    PSCT_PEDESTRIAN,
    PSCT_WHEELCHAIR,
    PSCT_SENIOR_CAR,
    PSCT_STROLLER,
    PSCT_SKATES,
    PSCT_GROUP,
  ];

  static final $core.List<PersonSubclassType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static PersonSubclassType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PersonSubclassType._(super.value, super.name);
}

class AnimalSubclassType extends $pb.ProtobufEnum {
  static const AnimalSubclassType ASCT_UNKNOWN =
      AnimalSubclassType._(0, _omitEnumNames ? '' : 'ASCT_UNKNOWN');

  static const $core.List<AnimalSubclassType> values = <AnimalSubclassType>[
    ASCT_UNKNOWN,
  ];

  static final $core.List<AnimalSubclassType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 0);
  static AnimalSubclassType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AnimalSubclassType._(super.value, super.name);
}

class NfoSubclassType extends $pb.ProtobufEnum {
  static const NfoSubclassType NFOSCT_UNKNOWN =
      NfoSubclassType._(0, _omitEnumNames ? '' : 'NFOSCT_UNKNOWN');

  static const $core.List<NfoSubclassType> values = <NfoSubclassType>[
    NFOSCT_UNKNOWN,
  ];

  static final $core.List<NfoSubclassType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 0);
  static NfoSubclassType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const NfoSubclassType._(super.value, super.name);
}

class FoSubclassType extends $pb.ProtobufEnum {
  static const FoSubclassType FOSCT_UNKNOWN =
      FoSubclassType._(0, _omitEnumNames ? '' : 'FOSCT_UNKNOWN');

  static const $core.List<FoSubclassType> values = <FoSubclassType>[
    FOSCT_UNKNOWN,
  ];

  static final $core.List<FoSubclassType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 0);
  static FoSubclassType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FoSubclassType._(super.value, super.name);
}

class RefPoint extends $pb.ProtobufEnum {
  static const RefPoint RP_UNKNOWN =
      RefPoint._(0, _omitEnumNames ? '' : 'RP_UNKNOWN');
  static const RefPoint RP_CENTER_BOTTOM =
      RefPoint._(1, _omitEnumNames ? '' : 'RP_CENTER_BOTTOM');
  static const RefPoint RP_FRONT_MIDWIDTH_BOTTOM =
      RefPoint._(2, _omitEnumNames ? '' : 'RP_FRONT_MIDWIDTH_BOTTOM');
  static const RefPoint RP_FRONT_RIGHT_BOTTOM =
      RefPoint._(3, _omitEnumNames ? '' : 'RP_FRONT_RIGHT_BOTTOM');
  static const RefPoint RP_MIDLENGTH_RIGHT_BOTTOM =
      RefPoint._(4, _omitEnumNames ? '' : 'RP_MIDLENGTH_RIGHT_BOTTOM');
  static const RefPoint RP_REAR_RIGHT_BOTTOM =
      RefPoint._(5, _omitEnumNames ? '' : 'RP_REAR_RIGHT_BOTTOM');
  static const RefPoint RP_REAR_MIDWIDTH_BOTTOM =
      RefPoint._(6, _omitEnumNames ? '' : 'RP_REAR_MIDWIDTH_BOTTOM');
  static const RefPoint RP_REAR_LEFT_BOTTOM =
      RefPoint._(7, _omitEnumNames ? '' : 'RP_REAR_LEFT_BOTTOM');
  static const RefPoint RP_MIDLENGTH_LEFT_BOTTOM =
      RefPoint._(8, _omitEnumNames ? '' : 'RP_MIDLENGTH_LEFT_BOTTOM');
  static const RefPoint RP_FRONT_LEFT_BOTTOM =
      RefPoint._(9, _omitEnumNames ? '' : 'RP_FRONT_LEFT_BOTTOM');

  static const $core.List<RefPoint> values = <RefPoint>[
    RP_UNKNOWN,
    RP_CENTER_BOTTOM,
    RP_FRONT_MIDWIDTH_BOTTOM,
    RP_FRONT_RIGHT_BOTTOM,
    RP_MIDLENGTH_RIGHT_BOTTOM,
    RP_REAR_RIGHT_BOTTOM,
    RP_REAR_MIDWIDTH_BOTTOM,
    RP_REAR_LEFT_BOTTOM,
    RP_MIDLENGTH_LEFT_BOTTOM,
    RP_FRONT_LEFT_BOTTOM,
  ];

  static final $core.List<RefPoint?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static RefPoint? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RefPoint._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
