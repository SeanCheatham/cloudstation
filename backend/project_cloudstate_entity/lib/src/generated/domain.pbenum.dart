///
//  Generated code. Do not modify.
//  source: domain.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class StaticType extends $pb.ProtobufEnum {
  static const StaticType INT32 = StaticType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INT32');
  static const StaticType INT64 = StaticType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INT64');
  static const StaticType FLOAT = StaticType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FLOAT');
  static const StaticType DOUBLE = StaticType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOUBLE');
  static const StaticType STRING = StaticType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STRING');
  static const StaticType BOOL = StaticType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BOOL');

  static const $core.List<StaticType> values = <StaticType> [
    INT32,
    INT64,
    FLOAT,
    DOUBLE,
    STRING,
    BOOL,
  ];

  static final $core.Map<$core.int, StaticType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StaticType valueOf($core.int value) => _byValue[value];

  const StaticType._($core.int v, $core.String n) : super(v, n);
}

