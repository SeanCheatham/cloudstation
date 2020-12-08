///
//  Generated code. Do not modify.
//  source: project.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'domain.pb.dart' as $3;

class GetProjectCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetProjectCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..hasRequiredFields = false
  ;

  GetProjectCommand._() : super();
  factory GetProjectCommand() => create();
  factory GetProjectCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetProjectCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetProjectCommand clone() => GetProjectCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetProjectCommand copyWith(void Function(GetProjectCommand) updates) => super.copyWith((message) => updates(message as GetProjectCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetProjectCommand create() => GetProjectCommand._();
  GetProjectCommand createEmptyInstance() => create();
  static $pb.PbList<GetProjectCommand> createRepeated() => $pb.PbList<GetProjectCommand>();
  @$core.pragma('dart2js:noInline')
  static GetProjectCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetProjectCommand>(create);
  static GetProjectCommand _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);
}

class GetProjectResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetProjectResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOM<$3.Project>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'project', subBuilder: $3.Project.create)
    ..hasRequiredFields = false
  ;

  GetProjectResponse._() : super();
  factory GetProjectResponse() => create();
  factory GetProjectResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetProjectResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetProjectResponse clone() => GetProjectResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetProjectResponse copyWith(void Function(GetProjectResponse) updates) => super.copyWith((message) => updates(message as GetProjectResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetProjectResponse create() => GetProjectResponse._();
  GetProjectResponse createEmptyInstance() => create();
  static $pb.PbList<GetProjectResponse> createRepeated() => $pb.PbList<GetProjectResponse>();
  @$core.pragma('dart2js:noInline')
  static GetProjectResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetProjectResponse>(create);
  static GetProjectResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $3.Project get project => $_getN(2);
  @$pb.TagNumber(3)
  set project($3.Project v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProject() => $_has(2);
  @$pb.TagNumber(3)
  void clearProject() => clearField(3);
  @$pb.TagNumber(3)
  $3.Project ensureProject() => $_ensure(2);
}

class AddModelCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddModelCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOM<$3.Model>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'model', subBuilder: $3.Model.create)
    ..hasRequiredFields = false
  ;

  AddModelCommand._() : super();
  factory AddModelCommand() => create();
  factory AddModelCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddModelCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddModelCommand clone() => AddModelCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddModelCommand copyWith(void Function(AddModelCommand) updates) => super.copyWith((message) => updates(message as AddModelCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddModelCommand create() => AddModelCommand._();
  AddModelCommand createEmptyInstance() => create();
  static $pb.PbList<AddModelCommand> createRepeated() => $pb.PbList<AddModelCommand>();
  @$core.pragma('dart2js:noInline')
  static AddModelCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddModelCommand>(create);
  static AddModelCommand _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $3.Model get model => $_getN(1);
  @$pb.TagNumber(2)
  set model($3.Model v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasModel() => $_has(1);
  @$pb.TagNumber(2)
  void clearModel() => clearField(2);
  @$pb.TagNumber(2)
  $3.Model ensureModel() => $_ensure(1);
}

class AddModelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddModelResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  AddModelResponse._() : super();
  factory AddModelResponse() => create();
  factory AddModelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddModelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddModelResponse clone() => AddModelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddModelResponse copyWith(void Function(AddModelResponse) updates) => super.copyWith((message) => updates(message as AddModelResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddModelResponse create() => AddModelResponse._();
  AddModelResponse createEmptyInstance() => create();
  static $pb.PbList<AddModelResponse> createRepeated() => $pb.PbList<AddModelResponse>();
  @$core.pragma('dart2js:noInline')
  static AddModelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddModelResponse>(create);
  static AddModelResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class RemoveModelCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveModelCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  RemoveModelCommand._() : super();
  factory RemoveModelCommand() => create();
  factory RemoveModelCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveModelCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveModelCommand clone() => RemoveModelCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveModelCommand copyWith(void Function(RemoveModelCommand) updates) => super.copyWith((message) => updates(message as RemoveModelCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveModelCommand create() => RemoveModelCommand._();
  RemoveModelCommand createEmptyInstance() => create();
  static $pb.PbList<RemoveModelCommand> createRepeated() => $pb.PbList<RemoveModelCommand>();
  @$core.pragma('dart2js:noInline')
  static RemoveModelCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveModelCommand>(create);
  static RemoveModelCommand _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class RemoveModelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveModelResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  RemoveModelResponse._() : super();
  factory RemoveModelResponse() => create();
  factory RemoveModelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveModelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveModelResponse clone() => RemoveModelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveModelResponse copyWith(void Function(RemoveModelResponse) updates) => super.copyWith((message) => updates(message as RemoveModelResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveModelResponse create() => RemoveModelResponse._();
  RemoveModelResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveModelResponse> createRepeated() => $pb.PbList<RemoveModelResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveModelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveModelResponse>(create);
  static RemoveModelResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class UpdateModelCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateModelCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalModelName', protoName: 'originalModelName')
    ..aOM<$3.Model>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedModel', protoName: 'updatedModel', subBuilder: $3.Model.create)
    ..hasRequiredFields = false
  ;

  UpdateModelCommand._() : super();
  factory UpdateModelCommand() => create();
  factory UpdateModelCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateModelCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateModelCommand clone() => UpdateModelCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateModelCommand copyWith(void Function(UpdateModelCommand) updates) => super.copyWith((message) => updates(message as UpdateModelCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateModelCommand create() => UpdateModelCommand._();
  UpdateModelCommand createEmptyInstance() => create();
  static $pb.PbList<UpdateModelCommand> createRepeated() => $pb.PbList<UpdateModelCommand>();
  @$core.pragma('dart2js:noInline')
  static UpdateModelCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateModelCommand>(create);
  static UpdateModelCommand _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get originalModelName => $_getSZ(1);
  @$pb.TagNumber(2)
  set originalModelName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOriginalModelName() => $_has(1);
  @$pb.TagNumber(2)
  void clearOriginalModelName() => clearField(2);

  @$pb.TagNumber(3)
  $3.Model get updatedModel => $_getN(2);
  @$pb.TagNumber(3)
  set updatedModel($3.Model v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedModel() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedModel() => clearField(3);
  @$pb.TagNumber(3)
  $3.Model ensureUpdatedModel() => $_ensure(2);
}

class UpdateModelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateModelResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  UpdateModelResponse._() : super();
  factory UpdateModelResponse() => create();
  factory UpdateModelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateModelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateModelResponse clone() => UpdateModelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateModelResponse copyWith(void Function(UpdateModelResponse) updates) => super.copyWith((message) => updates(message as UpdateModelResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateModelResponse create() => UpdateModelResponse._();
  UpdateModelResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateModelResponse> createRepeated() => $pb.PbList<UpdateModelResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateModelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateModelResponse>(create);
  static UpdateModelResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

