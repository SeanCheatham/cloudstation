///
//  Generated code. Do not modify.
//  source: cloudstate/eventing.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Eventing extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Eventing', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstate'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'in')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'out')
    ..hasRequiredFields = false
  ;

  Eventing._() : super();
  factory Eventing() => create();
  factory Eventing.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Eventing.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Eventing clone() => Eventing()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Eventing copyWith(void Function(Eventing) updates) => super.copyWith((message) => updates(message as Eventing)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Eventing create() => Eventing._();
  Eventing createEmptyInstance() => create();
  static $pb.PbList<Eventing> createRepeated() => $pb.PbList<Eventing>();
  @$core.pragma('dart2js:noInline')
  static Eventing getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Eventing>(create);
  static Eventing _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get in_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set in_1($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIn_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearIn_1() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get out => $_getSZ(1);
  @$pb.TagNumber(2)
  set out($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOut() => $_has(1);
  @$pb.TagNumber(2)
  void clearOut() => clearField(2);
}

class EventingExt {
  static final eventing = $pb.Extension<Eventing>(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'google.protobuf.MethodOptions', const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventing', 50003, $pb.PbFieldType.OM, defaultOrMaker: Eventing.getDefault, subBuilder: Eventing.create);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(eventing);
  }
}

