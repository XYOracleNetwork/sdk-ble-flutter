///
//  Generated code. Do not modify.
//  source: protos/device.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class Family extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Family')
    ..aOS(1, 'uuid')
    ..aOS(2, 'prefix')
    ..aOS(3, 'name')
    ..aOS(4, 'id')
    ..hasRequiredFields = false
  ;

  Family() : super();
  Family.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Family.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Family clone() => Family()..mergeFromMessage(this);
  Family copyWith(void Function(Family) updates) => super.copyWith((message) => updates(message as Family));
  $pb.BuilderInfo get info_ => _i;
  static Family create() => Family();
  Family createEmptyInstance() => create();
  static $pb.PbList<Family> createRepeated() => $pb.PbList<Family>();
  static Family getDefault() => _defaultInstance ??= create()..freeze();
  static Family _defaultInstance;

  $core.String get uuid => $_getS(0, '');
  set uuid($core.String v) { $_setString(0, v); }
  $core.bool hasUuid() => $_has(0);
  void clearUuid() => clearField(1);

  $core.String get prefix => $_getS(1, '');
  set prefix($core.String v) { $_setString(1, v); }
  $core.bool hasPrefix() => $_has(1);
  void clearPrefix() => clearField(2);

  $core.String get name => $_getS(2, '');
  set name($core.String v) { $_setString(2, v); }
  $core.bool hasName() => $_has(2);
  void clearName() => clearField(3);

  $core.String get id => $_getS(3, '');
  set id($core.String v) { $_setString(3, v); }
  $core.bool hasId() => $_has(3);
  void clearId() => clearField(4);
}

class Range extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Range')
    ..a<Int64>(1, 'min', $pb.PbFieldType.OS6, Int64.ZERO)
    ..a<Int64>(2, 'max', $pb.PbFieldType.OS6, Int64.ZERO)
    ..hasRequiredFields = false
  ;

  Range() : super();
  Range.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Range.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Range clone() => Range()..mergeFromMessage(this);
  Range copyWith(void Function(Range) updates) => super.copyWith((message) => updates(message as Range));
  $pb.BuilderInfo get info_ => _i;
  static Range create() => Range();
  Range createEmptyInstance() => create();
  static $pb.PbList<Range> createRepeated() => $pb.PbList<Range>();
  static Range getDefault() => _defaultInstance ??= create()..freeze();
  static Range _defaultInstance;

  Int64 get min => $_getI64(0);
  set min(Int64 v) { $_setInt64(0, v); }
  $core.bool hasMin() => $_has(0);
  void clearMin() => clearField(1);

  Int64 get max => $_getI64(1);
  set max(Int64 v) { $_setInt64(1, v); }
  $core.bool hasMax() => $_has(1);
  void clearMax() => clearField(2);
}

class IBeacon extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IBeacon')
    ..aInt64(1, 'major')
    ..aInt64(2, 'minor')
    ..aOS(3, 'uuid')
    ..hasRequiredFields = false
  ;

  IBeacon() : super();
  IBeacon.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  IBeacon.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  IBeacon clone() => IBeacon()..mergeFromMessage(this);
  IBeacon copyWith(void Function(IBeacon) updates) => super.copyWith((message) => updates(message as IBeacon));
  $pb.BuilderInfo get info_ => _i;
  static IBeacon create() => IBeacon();
  IBeacon createEmptyInstance() => create();
  static $pb.PbList<IBeacon> createRepeated() => $pb.PbList<IBeacon>();
  static IBeacon getDefault() => _defaultInstance ??= create()..freeze();
  static IBeacon _defaultInstance;

  Int64 get major => $_getI64(0);
  set major(Int64 v) { $_setInt64(0, v); }
  $core.bool hasMajor() => $_has(0);
  void clearMajor() => clearField(1);

  Int64 get minor => $_getI64(1);
  set minor(Int64 v) { $_setInt64(1, v); }
  $core.bool hasMinor() => $_has(1);
  void clearMinor() => clearField(2);

  $core.String get uuid => $_getS(2, '');
  set uuid($core.String v) { $_setString(2, v); }
  $core.bool hasUuid() => $_has(2);
  void clearUuid() => clearField(3);
}

class BluetoothDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BluetoothDevice')
    ..aOS(1, 'id')
    ..a<Family>(2, 'family', $pb.PbFieldType.OM, Family.getDefault, Family.create)
    ..a<IBeacon>(3, 'beacon', $pb.PbFieldType.OM, IBeacon.getDefault, IBeacon.create)
    ..a<Int64>(4, 'rssi', $pb.PbFieldType.OS6, Int64.ZERO)
    ..a<Range>(5, 'range', $pb.PbFieldType.OM, Range.getDefault, Range.create)
    ..aOB(6, 'connected')
    ..hasRequiredFields = false
  ;

  BluetoothDevice() : super();
  BluetoothDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BluetoothDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BluetoothDevice clone() => BluetoothDevice()..mergeFromMessage(this);
  BluetoothDevice copyWith(void Function(BluetoothDevice) updates) => super.copyWith((message) => updates(message as BluetoothDevice));
  $pb.BuilderInfo get info_ => _i;
  static BluetoothDevice create() => BluetoothDevice();
  BluetoothDevice createEmptyInstance() => create();
  static $pb.PbList<BluetoothDevice> createRepeated() => $pb.PbList<BluetoothDevice>();
  static BluetoothDevice getDefault() => _defaultInstance ??= create()..freeze();
  static BluetoothDevice _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  Family get family => $_getN(1);
  set family(Family v) { setField(2, v); }
  $core.bool hasFamily() => $_has(1);
  void clearFamily() => clearField(2);

  IBeacon get beacon => $_getN(2);
  set beacon(IBeacon v) { setField(3, v); }
  $core.bool hasBeacon() => $_has(2);
  void clearBeacon() => clearField(3);

  Int64 get rssi => $_getI64(3);
  set rssi(Int64 v) { $_setInt64(3, v); }
  $core.bool hasRssi() => $_has(3);
  void clearRssi() => clearField(4);

  Range get range => $_getN(4);
  set range(Range v) { setField(5, v); }
  $core.bool hasRange() => $_has(4);
  void clearRange() => clearField(5);

  $core.bool get connected => $_get(5, false);
  set connected($core.bool v) { $_setBool(5, v); }
  $core.bool hasConnected() => $_has(5);
  void clearConnected() => clearField(6);
}
