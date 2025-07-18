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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'cool4_sensor_interface_specification_v1.1.0.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'cool4_sensor_interface_specification_v1.1.0.pbenum.dart';

class SensingMessage extends $pb.GeneratedMessage {
  factory SensingMessage({
    $core.int? messageId,
    $core.int? protocolVersion,
    $core.int? messageCounter,
    $fixnum.Int64? sensingTime,
    $core.int? errorNotification,
    $core.int? errorCode,
    $core.Iterable<SensorInformation>? sensorInfo,
    $core.Iterable<ObjectInformation>? objectInfos,
    $core.Iterable<PerceivedFreeSpaceInformation>? freespaceInfos,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (protocolVersion != null) result.protocolVersion = protocolVersion;
    if (messageCounter != null) result.messageCounter = messageCounter;
    if (sensingTime != null) result.sensingTime = sensingTime;
    if (errorNotification != null) result.errorNotification = errorNotification;
    if (errorCode != null) result.errorCode = errorCode;
    if (sensorInfo != null) result.sensorInfo.addAll(sensorInfo);
    if (objectInfos != null) result.objectInfos.addAll(objectInfos);
    if (freespaceInfos != null) result.freespaceInfos.addAll(freespaceInfos);
    return result;
  }

  SensingMessage._();

  factory SensingMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensingMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensingMessage',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'messageId', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'protocolVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'messageCounter', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'sensingTime', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'errorNotification', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'errorCode', $pb.PbFieldType.OU3)
    ..pc<SensorInformation>(
        7, _omitFieldNames ? '' : 'sensorInfo', $pb.PbFieldType.PM,
        subBuilder: SensorInformation.create)
    ..pc<ObjectInformation>(
        8, _omitFieldNames ? '' : 'objectInfos', $pb.PbFieldType.PM,
        subBuilder: ObjectInformation.create)
    ..pc<PerceivedFreeSpaceInformation>(
        9, _omitFieldNames ? '' : 'freespaceInfos', $pb.PbFieldType.PM,
        subBuilder: PerceivedFreeSpaceInformation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensingMessage clone() => SensingMessage()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensingMessage copyWith(void Function(SensingMessage) updates) =>
      super.copyWith((message) => updates(message as SensingMessage))
          as SensingMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensingMessage create() => SensingMessage._();
  @$core.override
  SensingMessage createEmptyInstance() => create();
  static $pb.PbList<SensingMessage> createRepeated() =>
      $pb.PbList<SensingMessage>();
  @$core.pragma('dart2js:noInline')
  static SensingMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensingMessage>(create);
  static SensingMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageId => $_getIZ(0);
  @$pb.TagNumber(1)
  set messageId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get protocolVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set protocolVersion($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProtocolVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtocolVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get messageCounter => $_getIZ(2);
  @$pb.TagNumber(3)
  set messageCounter($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMessageCounter() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageCounter() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get sensingTime => $_getI64(3);
  @$pb.TagNumber(4)
  set sensingTime($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSensingTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearSensingTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get errorNotification => $_getIZ(4);
  @$pb.TagNumber(5)
  set errorNotification($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasErrorNotification() => $_has(4);
  @$pb.TagNumber(5)
  void clearErrorNotification() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get errorCode => $_getIZ(5);
  @$pb.TagNumber(6)
  set errorCode($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasErrorCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearErrorCode() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<SensorInformation> get sensorInfo => $_getList(6);

  @$pb.TagNumber(8)
  $pb.PbList<ObjectInformation> get objectInfos => $_getList(7);

  @$pb.TagNumber(9)
  $pb.PbList<PerceivedFreeSpaceInformation> get freespaceInfos => $_getList(8);
}

class SensorInformation extends $pb.GeneratedMessage {
  factory SensorInformation({
    SensorType? type,
    $core.int? latitude,
    $core.int? longitude,
    $core.int? altitude,
    $core.Iterable<DetectCapability>? detectCapabilities,
    $core.int? sensorStatus,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (latitude != null) result.latitude = latitude;
    if (longitude != null) result.longitude = longitude;
    if (altitude != null) result.altitude = altitude;
    if (detectCapabilities != null)
      result.detectCapabilities.addAll(detectCapabilities);
    if (sensorStatus != null) result.sensorStatus = sensorStatus;
    return result;
  }

  SensorInformation._();

  factory SensorInformation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorInformation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorInformation',
      createEmptyInstance: create)
    ..e<SensorType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: SensorType.ST_UNKNOWN,
        valueOf: SensorType.valueOf,
        enumValues: SensorType.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'latitude', $pb.PbFieldType.OS3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'longitude', $pb.PbFieldType.OS3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'altitude', $pb.PbFieldType.OS3)
    ..pc<DetectCapability>(
        5, _omitFieldNames ? '' : 'detectCapabilities', $pb.PbFieldType.PM,
        subBuilder: DetectCapability.create)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'sensorStatus', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorInformation clone() => SensorInformation()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorInformation copyWith(void Function(SensorInformation) updates) =>
      super.copyWith((message) => updates(message as SensorInformation))
          as SensorInformation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorInformation create() => SensorInformation._();
  @$core.override
  SensorInformation createEmptyInstance() => create();
  static $pb.PbList<SensorInformation> createRepeated() =>
      $pb.PbList<SensorInformation>();
  @$core.pragma('dart2js:noInline')
  static SensorInformation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorInformation>(create);
  static SensorInformation? _defaultInstance;

  @$pb.TagNumber(1)
  SensorType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SensorType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get latitude => $_getIZ(1);
  @$pb.TagNumber(2)
  set latitude($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLatitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLatitude() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get longitude => $_getIZ(2);
  @$pb.TagNumber(3)
  set longitude($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLongitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearLongitude() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get altitude => $_getIZ(3);
  @$pb.TagNumber(4)
  set altitude($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAltitude() => $_has(3);
  @$pb.TagNumber(4)
  void clearAltitude() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<DetectCapability> get detectCapabilities => $_getList(4);

  @$pb.TagNumber(6)
  $core.int get sensorStatus => $_getIZ(5);
  @$pb.TagNumber(6)
  set sensorStatus($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSensorStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearSensorStatus() => $_clearField(6);
}

class DetectCapability extends $pb.GeneratedMessage {
  factory DetectCapability({
    $core.int? detectableClasses,
    $core.Iterable<OffsetPointXY>? polyPoints,
    $core.int? confidence,
    $core.int? detectableSize,
  }) {
    final result = create();
    if (detectableClasses != null) result.detectableClasses = detectableClasses;
    if (polyPoints != null) result.polyPoints.addAll(polyPoints);
    if (confidence != null) result.confidence = confidence;
    if (detectableSize != null) result.detectableSize = detectableSize;
    return result;
  }

  DetectCapability._();

  factory DetectCapability.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DetectCapability.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DetectCapability',
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'detectableClasses', $pb.PbFieldType.OU3)
    ..pc<OffsetPointXY>(
        2, _omitFieldNames ? '' : 'polyPoints', $pb.PbFieldType.PM,
        subBuilder: OffsetPointXY.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'confidence', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'detectableSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DetectCapability clone() => DetectCapability()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DetectCapability copyWith(void Function(DetectCapability) updates) =>
      super.copyWith((message) => updates(message as DetectCapability))
          as DetectCapability;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DetectCapability create() => DetectCapability._();
  @$core.override
  DetectCapability createEmptyInstance() => create();
  static $pb.PbList<DetectCapability> createRepeated() =>
      $pb.PbList<DetectCapability>();
  @$core.pragma('dart2js:noInline')
  static DetectCapability getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DetectCapability>(create);
  static DetectCapability? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get detectableClasses => $_getIZ(0);
  @$pb.TagNumber(1)
  set detectableClasses($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDetectableClasses() => $_has(0);
  @$pb.TagNumber(1)
  void clearDetectableClasses() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<OffsetPointXY> get polyPoints => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get confidence => $_getIZ(2);
  @$pb.TagNumber(3)
  set confidence($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasConfidence() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfidence() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get detectableSize => $_getIZ(3);
  @$pb.TagNumber(4)
  set detectableSize($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDetectableSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetectableSize() => $_clearField(4);
}

class OffsetPointXY extends $pb.GeneratedMessage {
  factory OffsetPointXY({
    $core.int? dx,
    $core.int? dy,
  }) {
    final result = create();
    if (dx != null) result.dx = dx;
    if (dy != null) result.dy = dy;
    return result;
  }

  OffsetPointXY._();

  factory OffsetPointXY.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OffsetPointXY.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OffsetPointXY',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'dx', $pb.PbFieldType.OS3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'dy', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OffsetPointXY clone() => OffsetPointXY()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OffsetPointXY copyWith(void Function(OffsetPointXY) updates) =>
      super.copyWith((message) => updates(message as OffsetPointXY))
          as OffsetPointXY;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OffsetPointXY create() => OffsetPointXY._();
  @$core.override
  OffsetPointXY createEmptyInstance() => create();
  static $pb.PbList<OffsetPointXY> createRepeated() =>
      $pb.PbList<OffsetPointXY>();
  @$core.pragma('dart2js:noInline')
  static OffsetPointXY getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OffsetPointXY>(create);
  static OffsetPointXY? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get dx => $_getIZ(0);
  @$pb.TagNumber(1)
  set dx($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDx() => $_has(0);
  @$pb.TagNumber(1)
  void clearDx() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get dy => $_getIZ(1);
  @$pb.TagNumber(2)
  set dy($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDy() => $_has(1);
  @$pb.TagNumber(2)
  void clearDy() => $_clearField(2);
}

class ObjectInformation extends $pb.GeneratedMessage {
  factory ObjectInformation({
    $core.int? objectId,
    $core.int? timeOfMeasurement,
    $core.Iterable<ObjectClass>? objectClasses,
    $core.int? confidence,
    Position? position,
    RefPoint? refPoint,
    $core.int? heading,
    $core.int? headingAccuracy,
    $core.int? speed,
    $core.int? speedAccuracy,
    $core.int? staticStatus,
    $core.int? trackingStatus,
    $core.int? detectionCount,
    $core.int? lostCount,
    $core.int? objectAge,
    $core.int? yawRate,
    $core.int? yawRateAccuracy,
    $core.int? acceleration,
    $core.int? accelerationAccuracy,
    $core.int? orientation,
    $core.int? orientationAccuracy,
    $core.int? length,
    $core.int? lengthAccuracy,
    $core.int? width,
    $core.int? widthAccuracy,
    $core.int? height,
    $core.int? heightAccuracy,
  }) {
    final result = create();
    if (objectId != null) result.objectId = objectId;
    if (timeOfMeasurement != null) result.timeOfMeasurement = timeOfMeasurement;
    if (objectClasses != null) result.objectClasses.addAll(objectClasses);
    if (confidence != null) result.confidence = confidence;
    if (position != null) result.position = position;
    if (refPoint != null) result.refPoint = refPoint;
    if (heading != null) result.heading = heading;
    if (headingAccuracy != null) result.headingAccuracy = headingAccuracy;
    if (speed != null) result.speed = speed;
    if (speedAccuracy != null) result.speedAccuracy = speedAccuracy;
    if (staticStatus != null) result.staticStatus = staticStatus;
    if (trackingStatus != null) result.trackingStatus = trackingStatus;
    if (detectionCount != null) result.detectionCount = detectionCount;
    if (lostCount != null) result.lostCount = lostCount;
    if (objectAge != null) result.objectAge = objectAge;
    if (yawRate != null) result.yawRate = yawRate;
    if (yawRateAccuracy != null) result.yawRateAccuracy = yawRateAccuracy;
    if (acceleration != null) result.acceleration = acceleration;
    if (accelerationAccuracy != null)
      result.accelerationAccuracy = accelerationAccuracy;
    if (orientation != null) result.orientation = orientation;
    if (orientationAccuracy != null)
      result.orientationAccuracy = orientationAccuracy;
    if (length != null) result.length = length;
    if (lengthAccuracy != null) result.lengthAccuracy = lengthAccuracy;
    if (width != null) result.width = width;
    if (widthAccuracy != null) result.widthAccuracy = widthAccuracy;
    if (height != null) result.height = height;
    if (heightAccuracy != null) result.heightAccuracy = heightAccuracy;
    return result;
  }

  ObjectInformation._();

  factory ObjectInformation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ObjectInformation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ObjectInformation',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'objectId', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'timeOfMeasurement', $pb.PbFieldType.OS3)
    ..pc<ObjectClass>(
        3, _omitFieldNames ? '' : 'objectClasses', $pb.PbFieldType.PM,
        subBuilder: ObjectClass.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'confidence', $pb.PbFieldType.OU3)
    ..aOM<Position>(5, _omitFieldNames ? '' : 'position',
        subBuilder: Position.create)
    ..e<RefPoint>(6, _omitFieldNames ? '' : 'refPoint', $pb.PbFieldType.OE,
        defaultOrMaker: RefPoint.RP_UNKNOWN,
        valueOf: RefPoint.valueOf,
        enumValues: RefPoint.values)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'heading', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        8, _omitFieldNames ? '' : 'headingAccuracy', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'speed', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        10, _omitFieldNames ? '' : 'speedAccuracy', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        11, _omitFieldNames ? '' : 'staticStatus', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        12, _omitFieldNames ? '' : 'trackingStatus', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        13, _omitFieldNames ? '' : 'detectionCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'lostCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'objectAge', $pb.PbFieldType.OU3)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'yawRate', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        17, _omitFieldNames ? '' : 'yawRateAccuracy', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        18, _omitFieldNames ? '' : 'acceleration', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        19, _omitFieldNames ? '' : 'accelerationAccuracy', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        20, _omitFieldNames ? '' : 'orientation', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        21, _omitFieldNames ? '' : 'orientationAccuracy', $pb.PbFieldType.OU3)
    ..a<$core.int>(22, _omitFieldNames ? '' : 'length', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        23, _omitFieldNames ? '' : 'lengthAccuracy', $pb.PbFieldType.OU3)
    ..a<$core.int>(24, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        25, _omitFieldNames ? '' : 'widthAccuracy', $pb.PbFieldType.OU3)
    ..a<$core.int>(26, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        27, _omitFieldNames ? '' : 'heightAccuracy', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ObjectInformation clone() => ObjectInformation()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ObjectInformation copyWith(void Function(ObjectInformation) updates) =>
      super.copyWith((message) => updates(message as ObjectInformation))
          as ObjectInformation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObjectInformation create() => ObjectInformation._();
  @$core.override
  ObjectInformation createEmptyInstance() => create();
  static $pb.PbList<ObjectInformation> createRepeated() =>
      $pb.PbList<ObjectInformation>();
  @$core.pragma('dart2js:noInline')
  static ObjectInformation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ObjectInformation>(create);
  static ObjectInformation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get objectId => $_getIZ(0);
  @$pb.TagNumber(1)
  set objectId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasObjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearObjectId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get timeOfMeasurement => $_getIZ(1);
  @$pb.TagNumber(2)
  set timeOfMeasurement($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimeOfMeasurement() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimeOfMeasurement() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<ObjectClass> get objectClasses => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get confidence => $_getIZ(3);
  @$pb.TagNumber(4)
  set confidence($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasConfidence() => $_has(3);
  @$pb.TagNumber(4)
  void clearConfidence() => $_clearField(4);

  @$pb.TagNumber(5)
  Position get position => $_getN(4);
  @$pb.TagNumber(5)
  set position(Position value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPosition() => $_has(4);
  @$pb.TagNumber(5)
  void clearPosition() => $_clearField(5);
  @$pb.TagNumber(5)
  Position ensurePosition() => $_ensure(4);

  @$pb.TagNumber(6)
  RefPoint get refPoint => $_getN(5);
  @$pb.TagNumber(6)
  set refPoint(RefPoint value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasRefPoint() => $_has(5);
  @$pb.TagNumber(6)
  void clearRefPoint() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get heading => $_getIZ(6);
  @$pb.TagNumber(7)
  set heading($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeading() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeading() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get headingAccuracy => $_getIZ(7);
  @$pb.TagNumber(8)
  set headingAccuracy($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasHeadingAccuracy() => $_has(7);
  @$pb.TagNumber(8)
  void clearHeadingAccuracy() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get speed => $_getIZ(8);
  @$pb.TagNumber(9)
  set speed($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasSpeed() => $_has(8);
  @$pb.TagNumber(9)
  void clearSpeed() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get speedAccuracy => $_getIZ(9);
  @$pb.TagNumber(10)
  set speedAccuracy($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasSpeedAccuracy() => $_has(9);
  @$pb.TagNumber(10)
  void clearSpeedAccuracy() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get staticStatus => $_getIZ(10);
  @$pb.TagNumber(11)
  set staticStatus($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasStaticStatus() => $_has(10);
  @$pb.TagNumber(11)
  void clearStaticStatus() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get trackingStatus => $_getIZ(11);
  @$pb.TagNumber(12)
  set trackingStatus($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasTrackingStatus() => $_has(11);
  @$pb.TagNumber(12)
  void clearTrackingStatus() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get detectionCount => $_getIZ(12);
  @$pb.TagNumber(13)
  set detectionCount($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDetectionCount() => $_has(12);
  @$pb.TagNumber(13)
  void clearDetectionCount() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get lostCount => $_getIZ(13);
  @$pb.TagNumber(14)
  set lostCount($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasLostCount() => $_has(13);
  @$pb.TagNumber(14)
  void clearLostCount() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get objectAge => $_getIZ(14);
  @$pb.TagNumber(15)
  set objectAge($core.int value) => $_setUnsignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasObjectAge() => $_has(14);
  @$pb.TagNumber(15)
  void clearObjectAge() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get yawRate => $_getIZ(15);
  @$pb.TagNumber(16)
  set yawRate($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasYawRate() => $_has(15);
  @$pb.TagNumber(16)
  void clearYawRate() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get yawRateAccuracy => $_getIZ(16);
  @$pb.TagNumber(17)
  set yawRateAccuracy($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasYawRateAccuracy() => $_has(16);
  @$pb.TagNumber(17)
  void clearYawRateAccuracy() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get acceleration => $_getIZ(17);
  @$pb.TagNumber(18)
  set acceleration($core.int value) => $_setSignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasAcceleration() => $_has(17);
  @$pb.TagNumber(18)
  void clearAcceleration() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get accelerationAccuracy => $_getIZ(18);
  @$pb.TagNumber(19)
  set accelerationAccuracy($core.int value) => $_setUnsignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasAccelerationAccuracy() => $_has(18);
  @$pb.TagNumber(19)
  void clearAccelerationAccuracy() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get orientation => $_getIZ(19);
  @$pb.TagNumber(20)
  set orientation($core.int value) => $_setUnsignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasOrientation() => $_has(19);
  @$pb.TagNumber(20)
  void clearOrientation() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get orientationAccuracy => $_getIZ(20);
  @$pb.TagNumber(21)
  set orientationAccuracy($core.int value) => $_setUnsignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasOrientationAccuracy() => $_has(20);
  @$pb.TagNumber(21)
  void clearOrientationAccuracy() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get length => $_getIZ(21);
  @$pb.TagNumber(22)
  set length($core.int value) => $_setUnsignedInt32(21, value);
  @$pb.TagNumber(22)
  $core.bool hasLength() => $_has(21);
  @$pb.TagNumber(22)
  void clearLength() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get lengthAccuracy => $_getIZ(22);
  @$pb.TagNumber(23)
  set lengthAccuracy($core.int value) => $_setUnsignedInt32(22, value);
  @$pb.TagNumber(23)
  $core.bool hasLengthAccuracy() => $_has(22);
  @$pb.TagNumber(23)
  void clearLengthAccuracy() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.int get width => $_getIZ(23);
  @$pb.TagNumber(24)
  set width($core.int value) => $_setUnsignedInt32(23, value);
  @$pb.TagNumber(24)
  $core.bool hasWidth() => $_has(23);
  @$pb.TagNumber(24)
  void clearWidth() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.int get widthAccuracy => $_getIZ(24);
  @$pb.TagNumber(25)
  set widthAccuracy($core.int value) => $_setUnsignedInt32(24, value);
  @$pb.TagNumber(25)
  $core.bool hasWidthAccuracy() => $_has(24);
  @$pb.TagNumber(25)
  void clearWidthAccuracy() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.int get height => $_getIZ(25);
  @$pb.TagNumber(26)
  set height($core.int value) => $_setUnsignedInt32(25, value);
  @$pb.TagNumber(26)
  $core.bool hasHeight() => $_has(25);
  @$pb.TagNumber(26)
  void clearHeight() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.int get heightAccuracy => $_getIZ(26);
  @$pb.TagNumber(27)
  set heightAccuracy($core.int value) => $_setUnsignedInt32(26, value);
  @$pb.TagNumber(27)
  $core.bool hasHeightAccuracy() => $_has(26);
  @$pb.TagNumber(27)
  void clearHeightAccuracy() => $_clearField(27);
}

enum ObjectClass_SubclassType {
  vehicleSubclassType,
  trainSubclassType,
  motorcycleSubclassType,
  lightVehicleSubclassType,
  personSubclassType,
  animalSubclassType,
  nfoSubclassType,
  foSubclassType,
  notSet
}

class ObjectClass extends $pb.GeneratedMessage {
  factory ObjectClass({
    VehicleSubclassType? vehicleSubclassType,
    TrainSubclassType? trainSubclassType,
    MotorcycleSubclassType? motorcycleSubclassType,
    LightVehicleSubclassType? lightVehicleSubclassType,
    PersonSubclassType? personSubclassType,
    AnimalSubclassType? animalSubclassType,
    NfoSubclassType? nfoSubclassType,
    FoSubclassType? foSubclassType,
    $core.int? classConfidence,
    $core.int? subclassConfidence,
  }) {
    final result = create();
    if (vehicleSubclassType != null)
      result.vehicleSubclassType = vehicleSubclassType;
    if (trainSubclassType != null) result.trainSubclassType = trainSubclassType;
    if (motorcycleSubclassType != null)
      result.motorcycleSubclassType = motorcycleSubclassType;
    if (lightVehicleSubclassType != null)
      result.lightVehicleSubclassType = lightVehicleSubclassType;
    if (personSubclassType != null)
      result.personSubclassType = personSubclassType;
    if (animalSubclassType != null)
      result.animalSubclassType = animalSubclassType;
    if (nfoSubclassType != null) result.nfoSubclassType = nfoSubclassType;
    if (foSubclassType != null) result.foSubclassType = foSubclassType;
    if (classConfidence != null) result.classConfidence = classConfidence;
    if (subclassConfidence != null)
      result.subclassConfidence = subclassConfidence;
    return result;
  }

  ObjectClass._();

  factory ObjectClass.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ObjectClass.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ObjectClass_SubclassType>
      _ObjectClass_SubclassTypeByTag = {
    1: ObjectClass_SubclassType.vehicleSubclassType,
    2: ObjectClass_SubclassType.trainSubclassType,
    3: ObjectClass_SubclassType.motorcycleSubclassType,
    4: ObjectClass_SubclassType.lightVehicleSubclassType,
    5: ObjectClass_SubclassType.personSubclassType,
    6: ObjectClass_SubclassType.animalSubclassType,
    7: ObjectClass_SubclassType.nfoSubclassType,
    8: ObjectClass_SubclassType.foSubclassType,
    0: ObjectClass_SubclassType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ObjectClass',
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..e<VehicleSubclassType>(
        1, _omitFieldNames ? '' : 'vehicleSubclassType', $pb.PbFieldType.OE,
        defaultOrMaker: VehicleSubclassType.VSCT_UNKNOWN,
        valueOf: VehicleSubclassType.valueOf,
        enumValues: VehicleSubclassType.values)
    ..e<TrainSubclassType>(
        2, _omitFieldNames ? '' : 'trainSubclassType', $pb.PbFieldType.OE,
        defaultOrMaker: TrainSubclassType.TSCT_UNKNOWN,
        valueOf: TrainSubclassType.valueOf,
        enumValues: TrainSubclassType.values)
    ..e<MotorcycleSubclassType>(
        3, _omitFieldNames ? '' : 'motorcycleSubclassType', $pb.PbFieldType.OE,
        defaultOrMaker: MotorcycleSubclassType.MSCT_UNKNOWN,
        valueOf: MotorcycleSubclassType.valueOf,
        enumValues: MotorcycleSubclassType.values)
    ..e<LightVehicleSubclassType>(4,
        _omitFieldNames ? '' : 'lightVehicleSubclassType', $pb.PbFieldType.OE,
        defaultOrMaker: LightVehicleSubclassType.LVSCT_UNKNOWN,
        valueOf: LightVehicleSubclassType.valueOf,
        enumValues: LightVehicleSubclassType.values)
    ..e<PersonSubclassType>(
        5, _omitFieldNames ? '' : 'personSubclassType', $pb.PbFieldType.OE,
        defaultOrMaker: PersonSubclassType.PSCT_UNKNOWN,
        valueOf: PersonSubclassType.valueOf,
        enumValues: PersonSubclassType.values)
    ..e<AnimalSubclassType>(
        6, _omitFieldNames ? '' : 'animalSubclassType', $pb.PbFieldType.OE,
        defaultOrMaker: AnimalSubclassType.ASCT_UNKNOWN,
        valueOf: AnimalSubclassType.valueOf,
        enumValues: AnimalSubclassType.values)
    ..e<NfoSubclassType>(
        7, _omitFieldNames ? '' : 'nfoSubclassType', $pb.PbFieldType.OE,
        defaultOrMaker: NfoSubclassType.NFOSCT_UNKNOWN,
        valueOf: NfoSubclassType.valueOf,
        enumValues: NfoSubclassType.values)
    ..e<FoSubclassType>(
        8, _omitFieldNames ? '' : 'foSubclassType', $pb.PbFieldType.OE,
        defaultOrMaker: FoSubclassType.FOSCT_UNKNOWN,
        valueOf: FoSubclassType.valueOf,
        enumValues: FoSubclassType.values)
    ..a<$core.int>(
        9, _omitFieldNames ? '' : 'classConfidence', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        10, _omitFieldNames ? '' : 'subclassConfidence', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ObjectClass clone() => ObjectClass()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ObjectClass copyWith(void Function(ObjectClass) updates) =>
      super.copyWith((message) => updates(message as ObjectClass))
          as ObjectClass;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObjectClass create() => ObjectClass._();
  @$core.override
  ObjectClass createEmptyInstance() => create();
  static $pb.PbList<ObjectClass> createRepeated() => $pb.PbList<ObjectClass>();
  @$core.pragma('dart2js:noInline')
  static ObjectClass getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ObjectClass>(create);
  static ObjectClass? _defaultInstance;

  ObjectClass_SubclassType whichSubclassType() =>
      _ObjectClass_SubclassTypeByTag[$_whichOneof(0)]!;
  void clearSubclassType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  VehicleSubclassType get vehicleSubclassType => $_getN(0);
  @$pb.TagNumber(1)
  set vehicleSubclassType(VehicleSubclassType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVehicleSubclassType() => $_has(0);
  @$pb.TagNumber(1)
  void clearVehicleSubclassType() => $_clearField(1);

  @$pb.TagNumber(2)
  TrainSubclassType get trainSubclassType => $_getN(1);
  @$pb.TagNumber(2)
  set trainSubclassType(TrainSubclassType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTrainSubclassType() => $_has(1);
  @$pb.TagNumber(2)
  void clearTrainSubclassType() => $_clearField(2);

  @$pb.TagNumber(3)
  MotorcycleSubclassType get motorcycleSubclassType => $_getN(2);
  @$pb.TagNumber(3)
  set motorcycleSubclassType(MotorcycleSubclassType value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMotorcycleSubclassType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMotorcycleSubclassType() => $_clearField(3);

  @$pb.TagNumber(4)
  LightVehicleSubclassType get lightVehicleSubclassType => $_getN(3);
  @$pb.TagNumber(4)
  set lightVehicleSubclassType(LightVehicleSubclassType value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLightVehicleSubclassType() => $_has(3);
  @$pb.TagNumber(4)
  void clearLightVehicleSubclassType() => $_clearField(4);

  @$pb.TagNumber(5)
  PersonSubclassType get personSubclassType => $_getN(4);
  @$pb.TagNumber(5)
  set personSubclassType(PersonSubclassType value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPersonSubclassType() => $_has(4);
  @$pb.TagNumber(5)
  void clearPersonSubclassType() => $_clearField(5);

  @$pb.TagNumber(6)
  AnimalSubclassType get animalSubclassType => $_getN(5);
  @$pb.TagNumber(6)
  set animalSubclassType(AnimalSubclassType value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAnimalSubclassType() => $_has(5);
  @$pb.TagNumber(6)
  void clearAnimalSubclassType() => $_clearField(6);

  @$pb.TagNumber(7)
  NfoSubclassType get nfoSubclassType => $_getN(6);
  @$pb.TagNumber(7)
  set nfoSubclassType(NfoSubclassType value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasNfoSubclassType() => $_has(6);
  @$pb.TagNumber(7)
  void clearNfoSubclassType() => $_clearField(7);

  @$pb.TagNumber(8)
  FoSubclassType get foSubclassType => $_getN(7);
  @$pb.TagNumber(8)
  set foSubclassType(FoSubclassType value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasFoSubclassType() => $_has(7);
  @$pb.TagNumber(8)
  void clearFoSubclassType() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get classConfidence => $_getIZ(8);
  @$pb.TagNumber(9)
  set classConfidence($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasClassConfidence() => $_has(8);
  @$pb.TagNumber(9)
  void clearClassConfidence() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get subclassConfidence => $_getIZ(9);
  @$pb.TagNumber(10)
  set subclassConfidence($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasSubclassConfidence() => $_has(9);
  @$pb.TagNumber(10)
  void clearSubclassConfidence() => $_clearField(10);
}

class Position extends $pb.GeneratedMessage {
  factory Position({
    $core.int? latitude,
    $core.int? longitude,
    $core.int? altitude,
    $core.int? semiMajorAxisLength,
    $core.int? semiMinorAxisLength,
    $core.int? semiMajorOrientation,
    $core.int? altitudeAccuracy,
  }) {
    final result = create();
    if (latitude != null) result.latitude = latitude;
    if (longitude != null) result.longitude = longitude;
    if (altitude != null) result.altitude = altitude;
    if (semiMajorAxisLength != null)
      result.semiMajorAxisLength = semiMajorAxisLength;
    if (semiMinorAxisLength != null)
      result.semiMinorAxisLength = semiMinorAxisLength;
    if (semiMajorOrientation != null)
      result.semiMajorOrientation = semiMajorOrientation;
    if (altitudeAccuracy != null) result.altitudeAccuracy = altitudeAccuracy;
    return result;
  }

  Position._();

  factory Position.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Position.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Position',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'latitude', $pb.PbFieldType.OS3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'longitude', $pb.PbFieldType.OS3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'altitude', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'semiMajorAxisLength', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'semiMinorAxisLength', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'semiMajorOrientation', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'altitudeAccuracy', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Position clone() => Position()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Position copyWith(void Function(Position) updates) =>
      super.copyWith((message) => updates(message as Position)) as Position;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Position create() => Position._();
  @$core.override
  Position createEmptyInstance() => create();
  static $pb.PbList<Position> createRepeated() => $pb.PbList<Position>();
  @$core.pragma('dart2js:noInline')
  static Position getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Position>(create);
  static Position? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get latitude => $_getIZ(0);
  @$pb.TagNumber(1)
  set latitude($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLatitude() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatitude() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get longitude => $_getIZ(1);
  @$pb.TagNumber(2)
  set longitude($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLongitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitude() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get altitude => $_getIZ(2);
  @$pb.TagNumber(3)
  set altitude($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAltitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearAltitude() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get semiMajorAxisLength => $_getIZ(3);
  @$pb.TagNumber(4)
  set semiMajorAxisLength($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSemiMajorAxisLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearSemiMajorAxisLength() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get semiMinorAxisLength => $_getIZ(4);
  @$pb.TagNumber(5)
  set semiMinorAxisLength($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSemiMinorAxisLength() => $_has(4);
  @$pb.TagNumber(5)
  void clearSemiMinorAxisLength() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get semiMajorOrientation => $_getIZ(5);
  @$pb.TagNumber(6)
  set semiMajorOrientation($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSemiMajorOrientation() => $_has(5);
  @$pb.TagNumber(6)
  void clearSemiMajorOrientation() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get altitudeAccuracy => $_getIZ(6);
  @$pb.TagNumber(7)
  set altitudeAccuracy($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAltitudeAccuracy() => $_has(6);
  @$pb.TagNumber(7)
  void clearAltitudeAccuracy() => $_clearField(7);
}

class PerceivedFreeSpaceInformation extends $pb.GeneratedMessage {
  factory PerceivedFreeSpaceInformation({
    $core.int? timeOfMeasurement,
    Position? position,
    $core.Iterable<OffsetPointXY>? polyPoints,
    $core.int? confidence,
    $core.int? detectableSize,
  }) {
    final result = create();
    if (timeOfMeasurement != null) result.timeOfMeasurement = timeOfMeasurement;
    if (position != null) result.position = position;
    if (polyPoints != null) result.polyPoints.addAll(polyPoints);
    if (confidence != null) result.confidence = confidence;
    if (detectableSize != null) result.detectableSize = detectableSize;
    return result;
  }

  PerceivedFreeSpaceInformation._();

  factory PerceivedFreeSpaceInformation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PerceivedFreeSpaceInformation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PerceivedFreeSpaceInformation',
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'timeOfMeasurement', $pb.PbFieldType.OS3)
    ..aOM<Position>(2, _omitFieldNames ? '' : 'position',
        subBuilder: Position.create)
    ..pc<OffsetPointXY>(
        3, _omitFieldNames ? '' : 'polyPoints', $pb.PbFieldType.PM,
        subBuilder: OffsetPointXY.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'confidence', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'detectableSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PerceivedFreeSpaceInformation clone() =>
      PerceivedFreeSpaceInformation()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PerceivedFreeSpaceInformation copyWith(
          void Function(PerceivedFreeSpaceInformation) updates) =>
      super.copyWith(
              (message) => updates(message as PerceivedFreeSpaceInformation))
          as PerceivedFreeSpaceInformation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PerceivedFreeSpaceInformation create() =>
      PerceivedFreeSpaceInformation._();
  @$core.override
  PerceivedFreeSpaceInformation createEmptyInstance() => create();
  static $pb.PbList<PerceivedFreeSpaceInformation> createRepeated() =>
      $pb.PbList<PerceivedFreeSpaceInformation>();
  @$core.pragma('dart2js:noInline')
  static PerceivedFreeSpaceInformation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PerceivedFreeSpaceInformation>(create);
  static PerceivedFreeSpaceInformation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timeOfMeasurement => $_getIZ(0);
  @$pb.TagNumber(1)
  set timeOfMeasurement($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimeOfMeasurement() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeOfMeasurement() => $_clearField(1);

  @$pb.TagNumber(2)
  Position get position => $_getN(1);
  @$pb.TagNumber(2)
  set position(Position value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(1);
  @$pb.TagNumber(2)
  void clearPosition() => $_clearField(2);
  @$pb.TagNumber(2)
  Position ensurePosition() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<OffsetPointXY> get polyPoints => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get confidence => $_getIZ(3);
  @$pb.TagNumber(4)
  set confidence($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasConfidence() => $_has(3);
  @$pb.TagNumber(4)
  void clearConfidence() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get detectableSize => $_getIZ(4);
  @$pb.TagNumber(5)
  set detectableSize($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDetectableSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearDetectableSize() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
