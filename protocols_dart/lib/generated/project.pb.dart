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
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
    ..aOM<$3.Project>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'project', subBuilder: $3.Project.create)
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
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.Project get project => $_getN(1);
  @$pb.TagNumber(2)
  set project($3.Project v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProject() => $_has(1);
  @$pb.TagNumber(2)
  void clearProject() => clearField(2);
  @$pb.TagNumber(2)
  $3.Project ensureProject() => $_ensure(1);
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
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
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
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
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
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
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
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class UpdateModelCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateModelCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalName', protoName: 'originalName')
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
  $core.String get originalName => $_getSZ(1);
  @$pb.TagNumber(2)
  set originalName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOriginalName() => $_has(1);
  @$pb.TagNumber(2)
  void clearOriginalName() => clearField(2);

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
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
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
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class AddEventSourcedEntityCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddEventSourcedEntityCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOM<$3.EventSourcedEntity>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entity', subBuilder: $3.EventSourcedEntity.create)
    ..hasRequiredFields = false
  ;

  AddEventSourcedEntityCommand._() : super();
  factory AddEventSourcedEntityCommand() => create();
  factory AddEventSourcedEntityCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddEventSourcedEntityCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddEventSourcedEntityCommand clone() => AddEventSourcedEntityCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddEventSourcedEntityCommand copyWith(void Function(AddEventSourcedEntityCommand) updates) => super.copyWith((message) => updates(message as AddEventSourcedEntityCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddEventSourcedEntityCommand create() => AddEventSourcedEntityCommand._();
  AddEventSourcedEntityCommand createEmptyInstance() => create();
  static $pb.PbList<AddEventSourcedEntityCommand> createRepeated() => $pb.PbList<AddEventSourcedEntityCommand>();
  @$core.pragma('dart2js:noInline')
  static AddEventSourcedEntityCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddEventSourcedEntityCommand>(create);
  static AddEventSourcedEntityCommand _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $3.EventSourcedEntity get entity => $_getN(1);
  @$pb.TagNumber(2)
  set entity($3.EventSourcedEntity v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEntity() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntity() => clearField(2);
  @$pb.TagNumber(2)
  $3.EventSourcedEntity ensureEntity() => $_ensure(1);
}

class AddEventSourcedEntityResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddEventSourcedEntityResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  AddEventSourcedEntityResponse._() : super();
  factory AddEventSourcedEntityResponse() => create();
  factory AddEventSourcedEntityResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddEventSourcedEntityResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddEventSourcedEntityResponse clone() => AddEventSourcedEntityResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddEventSourcedEntityResponse copyWith(void Function(AddEventSourcedEntityResponse) updates) => super.copyWith((message) => updates(message as AddEventSourcedEntityResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddEventSourcedEntityResponse create() => AddEventSourcedEntityResponse._();
  AddEventSourcedEntityResponse createEmptyInstance() => create();
  static $pb.PbList<AddEventSourcedEntityResponse> createRepeated() => $pb.PbList<AddEventSourcedEntityResponse>();
  @$core.pragma('dart2js:noInline')
  static AddEventSourcedEntityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddEventSourcedEntityResponse>(create);
  static AddEventSourcedEntityResponse _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class RemoveEventSourcedEntityCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveEventSourcedEntityCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  RemoveEventSourcedEntityCommand._() : super();
  factory RemoveEventSourcedEntityCommand() => create();
  factory RemoveEventSourcedEntityCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveEventSourcedEntityCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveEventSourcedEntityCommand clone() => RemoveEventSourcedEntityCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveEventSourcedEntityCommand copyWith(void Function(RemoveEventSourcedEntityCommand) updates) => super.copyWith((message) => updates(message as RemoveEventSourcedEntityCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveEventSourcedEntityCommand create() => RemoveEventSourcedEntityCommand._();
  RemoveEventSourcedEntityCommand createEmptyInstance() => create();
  static $pb.PbList<RemoveEventSourcedEntityCommand> createRepeated() => $pb.PbList<RemoveEventSourcedEntityCommand>();
  @$core.pragma('dart2js:noInline')
  static RemoveEventSourcedEntityCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveEventSourcedEntityCommand>(create);
  static RemoveEventSourcedEntityCommand _defaultInstance;

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

class RemoveEventSourcedEntityResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveEventSourcedEntityResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  RemoveEventSourcedEntityResponse._() : super();
  factory RemoveEventSourcedEntityResponse() => create();
  factory RemoveEventSourcedEntityResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveEventSourcedEntityResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveEventSourcedEntityResponse clone() => RemoveEventSourcedEntityResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveEventSourcedEntityResponse copyWith(void Function(RemoveEventSourcedEntityResponse) updates) => super.copyWith((message) => updates(message as RemoveEventSourcedEntityResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveEventSourcedEntityResponse create() => RemoveEventSourcedEntityResponse._();
  RemoveEventSourcedEntityResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveEventSourcedEntityResponse> createRepeated() => $pb.PbList<RemoveEventSourcedEntityResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveEventSourcedEntityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveEventSourcedEntityResponse>(create);
  static RemoveEventSourcedEntityResponse _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class UpdateEventSourcedEntityCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateEventSourcedEntityCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalName', protoName: 'originalName')
    ..aOM<$3.EventSourcedEntity>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entity', subBuilder: $3.EventSourcedEntity.create)
    ..hasRequiredFields = false
  ;

  UpdateEventSourcedEntityCommand._() : super();
  factory UpdateEventSourcedEntityCommand() => create();
  factory UpdateEventSourcedEntityCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateEventSourcedEntityCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateEventSourcedEntityCommand clone() => UpdateEventSourcedEntityCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateEventSourcedEntityCommand copyWith(void Function(UpdateEventSourcedEntityCommand) updates) => super.copyWith((message) => updates(message as UpdateEventSourcedEntityCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateEventSourcedEntityCommand create() => UpdateEventSourcedEntityCommand._();
  UpdateEventSourcedEntityCommand createEmptyInstance() => create();
  static $pb.PbList<UpdateEventSourcedEntityCommand> createRepeated() => $pb.PbList<UpdateEventSourcedEntityCommand>();
  @$core.pragma('dart2js:noInline')
  static UpdateEventSourcedEntityCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateEventSourcedEntityCommand>(create);
  static UpdateEventSourcedEntityCommand _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get originalName => $_getSZ(1);
  @$pb.TagNumber(2)
  set originalName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOriginalName() => $_has(1);
  @$pb.TagNumber(2)
  void clearOriginalName() => clearField(2);

  @$pb.TagNumber(3)
  $3.EventSourcedEntity get entity => $_getN(2);
  @$pb.TagNumber(3)
  set entity($3.EventSourcedEntity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEntity() => $_has(2);
  @$pb.TagNumber(3)
  void clearEntity() => clearField(3);
  @$pb.TagNumber(3)
  $3.EventSourcedEntity ensureEntity() => $_ensure(2);
}

class UpdateEventSourcedEntityResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateEventSourcedEntityResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  UpdateEventSourcedEntityResponse._() : super();
  factory UpdateEventSourcedEntityResponse() => create();
  factory UpdateEventSourcedEntityResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateEventSourcedEntityResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateEventSourcedEntityResponse clone() => UpdateEventSourcedEntityResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateEventSourcedEntityResponse copyWith(void Function(UpdateEventSourcedEntityResponse) updates) => super.copyWith((message) => updates(message as UpdateEventSourcedEntityResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateEventSourcedEntityResponse create() => UpdateEventSourcedEntityResponse._();
  UpdateEventSourcedEntityResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateEventSourcedEntityResponse> createRepeated() => $pb.PbList<UpdateEventSourcedEntityResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateEventSourcedEntityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateEventSourcedEntityResponse>(create);
  static UpdateEventSourcedEntityResponse _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class AddReplicatedEntityCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddReplicatedEntityCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOM<$3.ReplicatedEntity>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entity', subBuilder: $3.ReplicatedEntity.create)
    ..hasRequiredFields = false
  ;

  AddReplicatedEntityCommand._() : super();
  factory AddReplicatedEntityCommand() => create();
  factory AddReplicatedEntityCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddReplicatedEntityCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddReplicatedEntityCommand clone() => AddReplicatedEntityCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddReplicatedEntityCommand copyWith(void Function(AddReplicatedEntityCommand) updates) => super.copyWith((message) => updates(message as AddReplicatedEntityCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddReplicatedEntityCommand create() => AddReplicatedEntityCommand._();
  AddReplicatedEntityCommand createEmptyInstance() => create();
  static $pb.PbList<AddReplicatedEntityCommand> createRepeated() => $pb.PbList<AddReplicatedEntityCommand>();
  @$core.pragma('dart2js:noInline')
  static AddReplicatedEntityCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddReplicatedEntityCommand>(create);
  static AddReplicatedEntityCommand _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $3.ReplicatedEntity get entity => $_getN(1);
  @$pb.TagNumber(2)
  set entity($3.ReplicatedEntity v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEntity() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntity() => clearField(2);
  @$pb.TagNumber(2)
  $3.ReplicatedEntity ensureEntity() => $_ensure(1);
}

class AddReplicatedEntityResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddReplicatedEntityResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  AddReplicatedEntityResponse._() : super();
  factory AddReplicatedEntityResponse() => create();
  factory AddReplicatedEntityResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddReplicatedEntityResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddReplicatedEntityResponse clone() => AddReplicatedEntityResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddReplicatedEntityResponse copyWith(void Function(AddReplicatedEntityResponse) updates) => super.copyWith((message) => updates(message as AddReplicatedEntityResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddReplicatedEntityResponse create() => AddReplicatedEntityResponse._();
  AddReplicatedEntityResponse createEmptyInstance() => create();
  static $pb.PbList<AddReplicatedEntityResponse> createRepeated() => $pb.PbList<AddReplicatedEntityResponse>();
  @$core.pragma('dart2js:noInline')
  static AddReplicatedEntityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddReplicatedEntityResponse>(create);
  static AddReplicatedEntityResponse _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class RemoveReplicatedEntityCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveReplicatedEntityCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  RemoveReplicatedEntityCommand._() : super();
  factory RemoveReplicatedEntityCommand() => create();
  factory RemoveReplicatedEntityCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveReplicatedEntityCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveReplicatedEntityCommand clone() => RemoveReplicatedEntityCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveReplicatedEntityCommand copyWith(void Function(RemoveReplicatedEntityCommand) updates) => super.copyWith((message) => updates(message as RemoveReplicatedEntityCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveReplicatedEntityCommand create() => RemoveReplicatedEntityCommand._();
  RemoveReplicatedEntityCommand createEmptyInstance() => create();
  static $pb.PbList<RemoveReplicatedEntityCommand> createRepeated() => $pb.PbList<RemoveReplicatedEntityCommand>();
  @$core.pragma('dart2js:noInline')
  static RemoveReplicatedEntityCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveReplicatedEntityCommand>(create);
  static RemoveReplicatedEntityCommand _defaultInstance;

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

class RemoveReplicatedEntityResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveReplicatedEntityResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  RemoveReplicatedEntityResponse._() : super();
  factory RemoveReplicatedEntityResponse() => create();
  factory RemoveReplicatedEntityResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveReplicatedEntityResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveReplicatedEntityResponse clone() => RemoveReplicatedEntityResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveReplicatedEntityResponse copyWith(void Function(RemoveReplicatedEntityResponse) updates) => super.copyWith((message) => updates(message as RemoveReplicatedEntityResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveReplicatedEntityResponse create() => RemoveReplicatedEntityResponse._();
  RemoveReplicatedEntityResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveReplicatedEntityResponse> createRepeated() => $pb.PbList<RemoveReplicatedEntityResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveReplicatedEntityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveReplicatedEntityResponse>(create);
  static RemoveReplicatedEntityResponse _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class UpdateReplicatedEntityCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateReplicatedEntityCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalName', protoName: 'originalName')
    ..aOM<$3.ReplicatedEntity>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entity', subBuilder: $3.ReplicatedEntity.create)
    ..hasRequiredFields = false
  ;

  UpdateReplicatedEntityCommand._() : super();
  factory UpdateReplicatedEntityCommand() => create();
  factory UpdateReplicatedEntityCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateReplicatedEntityCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateReplicatedEntityCommand clone() => UpdateReplicatedEntityCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateReplicatedEntityCommand copyWith(void Function(UpdateReplicatedEntityCommand) updates) => super.copyWith((message) => updates(message as UpdateReplicatedEntityCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateReplicatedEntityCommand create() => UpdateReplicatedEntityCommand._();
  UpdateReplicatedEntityCommand createEmptyInstance() => create();
  static $pb.PbList<UpdateReplicatedEntityCommand> createRepeated() => $pb.PbList<UpdateReplicatedEntityCommand>();
  @$core.pragma('dart2js:noInline')
  static UpdateReplicatedEntityCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateReplicatedEntityCommand>(create);
  static UpdateReplicatedEntityCommand _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get originalName => $_getSZ(1);
  @$pb.TagNumber(2)
  set originalName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOriginalName() => $_has(1);
  @$pb.TagNumber(2)
  void clearOriginalName() => clearField(2);

  @$pb.TagNumber(3)
  $3.ReplicatedEntity get entity => $_getN(2);
  @$pb.TagNumber(3)
  set entity($3.ReplicatedEntity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEntity() => $_has(2);
  @$pb.TagNumber(3)
  void clearEntity() => clearField(3);
  @$pb.TagNumber(3)
  $3.ReplicatedEntity ensureEntity() => $_ensure(2);
}

class UpdateReplicatedEntityResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateReplicatedEntityResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  UpdateReplicatedEntityResponse._() : super();
  factory UpdateReplicatedEntityResponse() => create();
  factory UpdateReplicatedEntityResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateReplicatedEntityResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateReplicatedEntityResponse clone() => UpdateReplicatedEntityResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateReplicatedEntityResponse copyWith(void Function(UpdateReplicatedEntityResponse) updates) => super.copyWith((message) => updates(message as UpdateReplicatedEntityResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateReplicatedEntityResponse create() => UpdateReplicatedEntityResponse._();
  UpdateReplicatedEntityResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateReplicatedEntityResponse> createRepeated() => $pb.PbList<UpdateReplicatedEntityResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateReplicatedEntityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateReplicatedEntityResponse>(create);
  static UpdateReplicatedEntityResponse _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class AddActionCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddActionCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOM<$3.Action>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', subBuilder: $3.Action.create)
    ..hasRequiredFields = false
  ;

  AddActionCommand._() : super();
  factory AddActionCommand() => create();
  factory AddActionCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddActionCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddActionCommand clone() => AddActionCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddActionCommand copyWith(void Function(AddActionCommand) updates) => super.copyWith((message) => updates(message as AddActionCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddActionCommand create() => AddActionCommand._();
  AddActionCommand createEmptyInstance() => create();
  static $pb.PbList<AddActionCommand> createRepeated() => $pb.PbList<AddActionCommand>();
  @$core.pragma('dart2js:noInline')
  static AddActionCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddActionCommand>(create);
  static AddActionCommand _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $3.Action get action => $_getN(1);
  @$pb.TagNumber(2)
  set action($3.Action v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => clearField(2);
  @$pb.TagNumber(2)
  $3.Action ensureAction() => $_ensure(1);
}

class AddActionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddActionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  AddActionResponse._() : super();
  factory AddActionResponse() => create();
  factory AddActionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddActionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddActionResponse clone() => AddActionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddActionResponse copyWith(void Function(AddActionResponse) updates) => super.copyWith((message) => updates(message as AddActionResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddActionResponse create() => AddActionResponse._();
  AddActionResponse createEmptyInstance() => create();
  static $pb.PbList<AddActionResponse> createRepeated() => $pb.PbList<AddActionResponse>();
  @$core.pragma('dart2js:noInline')
  static AddActionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddActionResponse>(create);
  static AddActionResponse _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class RemoveActionCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveActionCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  RemoveActionCommand._() : super();
  factory RemoveActionCommand() => create();
  factory RemoveActionCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveActionCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveActionCommand clone() => RemoveActionCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveActionCommand copyWith(void Function(RemoveActionCommand) updates) => super.copyWith((message) => updates(message as RemoveActionCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveActionCommand create() => RemoveActionCommand._();
  RemoveActionCommand createEmptyInstance() => create();
  static $pb.PbList<RemoveActionCommand> createRepeated() => $pb.PbList<RemoveActionCommand>();
  @$core.pragma('dart2js:noInline')
  static RemoveActionCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveActionCommand>(create);
  static RemoveActionCommand _defaultInstance;

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

class RemoveActionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveActionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  RemoveActionResponse._() : super();
  factory RemoveActionResponse() => create();
  factory RemoveActionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveActionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveActionResponse clone() => RemoveActionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveActionResponse copyWith(void Function(RemoveActionResponse) updates) => super.copyWith((message) => updates(message as RemoveActionResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveActionResponse create() => RemoveActionResponse._();
  RemoveActionResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveActionResponse> createRepeated() => $pb.PbList<RemoveActionResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveActionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveActionResponse>(create);
  static RemoveActionResponse _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class UpdateActionCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateActionCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalName', protoName: 'originalName')
    ..aOM<$3.Action>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', subBuilder: $3.Action.create)
    ..hasRequiredFields = false
  ;

  UpdateActionCommand._() : super();
  factory UpdateActionCommand() => create();
  factory UpdateActionCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateActionCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateActionCommand clone() => UpdateActionCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateActionCommand copyWith(void Function(UpdateActionCommand) updates) => super.copyWith((message) => updates(message as UpdateActionCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateActionCommand create() => UpdateActionCommand._();
  UpdateActionCommand createEmptyInstance() => create();
  static $pb.PbList<UpdateActionCommand> createRepeated() => $pb.PbList<UpdateActionCommand>();
  @$core.pragma('dart2js:noInline')
  static UpdateActionCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateActionCommand>(create);
  static UpdateActionCommand _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get originalName => $_getSZ(1);
  @$pb.TagNumber(2)
  set originalName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOriginalName() => $_has(1);
  @$pb.TagNumber(2)
  void clearOriginalName() => clearField(2);

  @$pb.TagNumber(3)
  $3.Action get action => $_getN(2);
  @$pb.TagNumber(3)
  set action($3.Action v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAction() => $_has(2);
  @$pb.TagNumber(3)
  void clearAction() => clearField(3);
  @$pb.TagNumber(3)
  $3.Action ensureAction() => $_ensure(2);
}

class UpdateActionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateActionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  UpdateActionResponse._() : super();
  factory UpdateActionResponse() => create();
  factory UpdateActionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateActionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateActionResponse clone() => UpdateActionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateActionResponse copyWith(void Function(UpdateActionResponse) updates) => super.copyWith((message) => updates(message as UpdateActionResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateActionResponse create() => UpdateActionResponse._();
  UpdateActionResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateActionResponse> createRepeated() => $pb.PbList<UpdateActionResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateActionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateActionResponse>(create);
  static UpdateActionResponse _defaultInstance;

  @$pb.TagNumber(1)
  Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Result ensureResult() => $_ensure(0);
}

class VerifyCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventSourcedEntityNames', protoName: 'eventSourcedEntityNames')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'replicatedEntityNames', protoName: 'replicatedEntityNames')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actionNames', protoName: 'actionNames')
    ..hasRequiredFields = false
  ;

  VerifyCommand._() : super();
  factory VerifyCommand() => create();
  factory VerifyCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyCommand clone() => VerifyCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyCommand copyWith(void Function(VerifyCommand) updates) => super.copyWith((message) => updates(message as VerifyCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyCommand create() => VerifyCommand._();
  VerifyCommand createEmptyInstance() => create();
  static $pb.PbList<VerifyCommand> createRepeated() => $pb.PbList<VerifyCommand>();
  @$core.pragma('dart2js:noInline')
  static VerifyCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyCommand>(create);
  static VerifyCommand _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get eventSourcedEntityNames => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get replicatedEntityNames => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get actionNames => $_getList(3);
}

class VerifyResponse_VerificationResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyResponse.VerificationResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errors')
    ..hasRequiredFields = false
  ;

  VerifyResponse_VerificationResult._() : super();
  factory VerifyResponse_VerificationResult() => create();
  factory VerifyResponse_VerificationResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyResponse_VerificationResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyResponse_VerificationResult clone() => VerifyResponse_VerificationResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyResponse_VerificationResult copyWith(void Function(VerifyResponse_VerificationResult) updates) => super.copyWith((message) => updates(message as VerifyResponse_VerificationResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyResponse_VerificationResult create() => VerifyResponse_VerificationResult._();
  VerifyResponse_VerificationResult createEmptyInstance() => create();
  static $pb.PbList<VerifyResponse_VerificationResult> createRepeated() => $pb.PbList<VerifyResponse_VerificationResult>();
  @$core.pragma('dart2js:noInline')
  static VerifyResponse_VerificationResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyResponse_VerificationResult>(create);
  static VerifyResponse_VerificationResult _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get errors => $_getList(1);
}

class VerifyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..m<$core.String, VerifyResponse_VerificationResult>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventSourcedEntityVerifications', protoName: 'eventSourcedEntityVerifications', entryClassName: 'VerifyResponse.EventSourcedEntityVerificationsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: VerifyResponse_VerificationResult.create, packageName: const $pb.PackageName('cloudstation.project'))
    ..m<$core.String, VerifyResponse_VerificationResult>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'replicatedEntityVerifications', protoName: 'replicatedEntityVerifications', entryClassName: 'VerifyResponse.ReplicatedEntityVerificationsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: VerifyResponse_VerificationResult.create, packageName: const $pb.PackageName('cloudstation.project'))
    ..m<$core.String, VerifyResponse_VerificationResult>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actionVerifications', protoName: 'actionVerifications', entryClassName: 'VerifyResponse.ActionVerificationsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: VerifyResponse_VerificationResult.create, packageName: const $pb.PackageName('cloudstation.project'))
    ..hasRequiredFields = false
  ;

  VerifyResponse._() : super();
  factory VerifyResponse() => create();
  factory VerifyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyResponse clone() => VerifyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyResponse copyWith(void Function(VerifyResponse) updates) => super.copyWith((message) => updates(message as VerifyResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyResponse create() => VerifyResponse._();
  VerifyResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyResponse> createRepeated() => $pb.PbList<VerifyResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyResponse>(create);
  static VerifyResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, VerifyResponse_VerificationResult> get eventSourcedEntityVerifications => $_getMap(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, VerifyResponse_VerificationResult> get replicatedEntityVerifications => $_getMap(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, VerifyResponse_VerificationResult> get actionVerifications => $_getMap(2);
}

class DeployCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeployCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventSourcedEntityNames', protoName: 'eventSourcedEntityNames')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'replicatedEntityNames', protoName: 'replicatedEntityNames')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actionNames', protoName: 'actionNames')
    ..hasRequiredFields = false
  ;

  DeployCommand._() : super();
  factory DeployCommand() => create();
  factory DeployCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeployCommand clone() => DeployCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeployCommand copyWith(void Function(DeployCommand) updates) => super.copyWith((message) => updates(message as DeployCommand)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployCommand create() => DeployCommand._();
  DeployCommand createEmptyInstance() => create();
  static $pb.PbList<DeployCommand> createRepeated() => $pb.PbList<DeployCommand>();
  @$core.pragma('dart2js:noInline')
  static DeployCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeployCommand>(create);
  static DeployCommand _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get eventSourcedEntityNames => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get replicatedEntityNames => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get actionNames => $_getList(3);
}

class DeployResponse_DeployResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeployResponse.DeployResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errors')
    ..hasRequiredFields = false
  ;

  DeployResponse_DeployResult._() : super();
  factory DeployResponse_DeployResult() => create();
  factory DeployResponse_DeployResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployResponse_DeployResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeployResponse_DeployResult clone() => DeployResponse_DeployResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeployResponse_DeployResult copyWith(void Function(DeployResponse_DeployResult) updates) => super.copyWith((message) => updates(message as DeployResponse_DeployResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployResponse_DeployResult create() => DeployResponse_DeployResult._();
  DeployResponse_DeployResult createEmptyInstance() => create();
  static $pb.PbList<DeployResponse_DeployResult> createRepeated() => $pb.PbList<DeployResponse_DeployResult>();
  @$core.pragma('dart2js:noInline')
  static DeployResponse_DeployResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeployResponse_DeployResult>(create);
  static DeployResponse_DeployResult _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get errors => $_getList(1);
}

class DeployResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeployResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..m<$core.String, DeployResponse_DeployResult>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventSourcedEntityResults', protoName: 'eventSourcedEntityResults', entryClassName: 'DeployResponse.EventSourcedEntityResultsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: DeployResponse_DeployResult.create, packageName: const $pb.PackageName('cloudstation.project'))
    ..m<$core.String, DeployResponse_DeployResult>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'replicatedEntityResults', protoName: 'replicatedEntityResults', entryClassName: 'DeployResponse.ReplicatedEntityResultsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: DeployResponse_DeployResult.create, packageName: const $pb.PackageName('cloudstation.project'))
    ..m<$core.String, DeployResponse_DeployResult>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actionResults', protoName: 'actionResults', entryClassName: 'DeployResponse.ActionResultsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: DeployResponse_DeployResult.create, packageName: const $pb.PackageName('cloudstation.project'))
    ..hasRequiredFields = false
  ;

  DeployResponse._() : super();
  factory DeployResponse() => create();
  factory DeployResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeployResponse clone() => DeployResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeployResponse copyWith(void Function(DeployResponse) updates) => super.copyWith((message) => updates(message as DeployResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployResponse create() => DeployResponse._();
  DeployResponse createEmptyInstance() => create();
  static $pb.PbList<DeployResponse> createRepeated() => $pb.PbList<DeployResponse>();
  @$core.pragma('dart2js:noInline')
  static DeployResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeployResponse>(create);
  static DeployResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, DeployResponse_DeployResult> get eventSourcedEntityResults => $_getMap(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, DeployResponse_DeployResult> get replicatedEntityResults => $_getMap(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, DeployResponse_DeployResult> get actionResults => $_getMap(2);
}

class ModelAddedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModelAddedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<$3.Model>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'model', subBuilder: $3.Model.create)
    ..hasRequiredFields = false
  ;

  ModelAddedEvent._() : super();
  factory ModelAddedEvent() => create();
  factory ModelAddedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModelAddedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModelAddedEvent clone() => ModelAddedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModelAddedEvent copyWith(void Function(ModelAddedEvent) updates) => super.copyWith((message) => updates(message as ModelAddedEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModelAddedEvent create() => ModelAddedEvent._();
  ModelAddedEvent createEmptyInstance() => create();
  static $pb.PbList<ModelAddedEvent> createRepeated() => $pb.PbList<ModelAddedEvent>();
  @$core.pragma('dart2js:noInline')
  static ModelAddedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModelAddedEvent>(create);
  static ModelAddedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $3.Model get model => $_getN(0);
  @$pb.TagNumber(1)
  set model($3.Model v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModel() => $_has(0);
  @$pb.TagNumber(1)
  void clearModel() => clearField(1);
  @$pb.TagNumber(1)
  $3.Model ensureModel() => $_ensure(0);
}

class ModelRemovedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModelRemovedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  ModelRemovedEvent._() : super();
  factory ModelRemovedEvent() => create();
  factory ModelRemovedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModelRemovedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModelRemovedEvent clone() => ModelRemovedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModelRemovedEvent copyWith(void Function(ModelRemovedEvent) updates) => super.copyWith((message) => updates(message as ModelRemovedEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModelRemovedEvent create() => ModelRemovedEvent._();
  ModelRemovedEvent createEmptyInstance() => create();
  static $pb.PbList<ModelRemovedEvent> createRepeated() => $pb.PbList<ModelRemovedEvent>();
  @$core.pragma('dart2js:noInline')
  static ModelRemovedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModelRemovedEvent>(create);
  static ModelRemovedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class ModelUpdatedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModelUpdatedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalName', protoName: 'originalName')
    ..aOM<$3.Model>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedModel', protoName: 'updatedModel', subBuilder: $3.Model.create)
    ..hasRequiredFields = false
  ;

  ModelUpdatedEvent._() : super();
  factory ModelUpdatedEvent() => create();
  factory ModelUpdatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModelUpdatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModelUpdatedEvent clone() => ModelUpdatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModelUpdatedEvent copyWith(void Function(ModelUpdatedEvent) updates) => super.copyWith((message) => updates(message as ModelUpdatedEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModelUpdatedEvent create() => ModelUpdatedEvent._();
  ModelUpdatedEvent createEmptyInstance() => create();
  static $pb.PbList<ModelUpdatedEvent> createRepeated() => $pb.PbList<ModelUpdatedEvent>();
  @$core.pragma('dart2js:noInline')
  static ModelUpdatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModelUpdatedEvent>(create);
  static ModelUpdatedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get originalName => $_getSZ(0);
  @$pb.TagNumber(1)
  set originalName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOriginalName() => $_has(0);
  @$pb.TagNumber(1)
  void clearOriginalName() => clearField(1);

  @$pb.TagNumber(2)
  $3.Model get updatedModel => $_getN(1);
  @$pb.TagNumber(2)
  set updatedModel($3.Model v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdatedModel() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdatedModel() => clearField(2);
  @$pb.TagNumber(2)
  $3.Model ensureUpdatedModel() => $_ensure(1);
}

class EventSourcedEntityAddedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EventSourcedEntityAddedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<$3.EventSourcedEntity>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entity', subBuilder: $3.EventSourcedEntity.create)
    ..hasRequiredFields = false
  ;

  EventSourcedEntityAddedEvent._() : super();
  factory EventSourcedEntityAddedEvent() => create();
  factory EventSourcedEntityAddedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSourcedEntityAddedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventSourcedEntityAddedEvent clone() => EventSourcedEntityAddedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventSourcedEntityAddedEvent copyWith(void Function(EventSourcedEntityAddedEvent) updates) => super.copyWith((message) => updates(message as EventSourcedEntityAddedEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSourcedEntityAddedEvent create() => EventSourcedEntityAddedEvent._();
  EventSourcedEntityAddedEvent createEmptyInstance() => create();
  static $pb.PbList<EventSourcedEntityAddedEvent> createRepeated() => $pb.PbList<EventSourcedEntityAddedEvent>();
  @$core.pragma('dart2js:noInline')
  static EventSourcedEntityAddedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSourcedEntityAddedEvent>(create);
  static EventSourcedEntityAddedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $3.EventSourcedEntity get entity => $_getN(0);
  @$pb.TagNumber(1)
  set entity($3.EventSourcedEntity v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntity() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntity() => clearField(1);
  @$pb.TagNumber(1)
  $3.EventSourcedEntity ensureEntity() => $_ensure(0);
}

class EventSourcedEntityRemovedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EventSourcedEntityRemovedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  EventSourcedEntityRemovedEvent._() : super();
  factory EventSourcedEntityRemovedEvent() => create();
  factory EventSourcedEntityRemovedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSourcedEntityRemovedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventSourcedEntityRemovedEvent clone() => EventSourcedEntityRemovedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventSourcedEntityRemovedEvent copyWith(void Function(EventSourcedEntityRemovedEvent) updates) => super.copyWith((message) => updates(message as EventSourcedEntityRemovedEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSourcedEntityRemovedEvent create() => EventSourcedEntityRemovedEvent._();
  EventSourcedEntityRemovedEvent createEmptyInstance() => create();
  static $pb.PbList<EventSourcedEntityRemovedEvent> createRepeated() => $pb.PbList<EventSourcedEntityRemovedEvent>();
  @$core.pragma('dart2js:noInline')
  static EventSourcedEntityRemovedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSourcedEntityRemovedEvent>(create);
  static EventSourcedEntityRemovedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class EventSourcedEntityUpdatedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EventSourcedEntityUpdatedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalName', protoName: 'originalName')
    ..aOM<$3.EventSourcedEntity>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entity', subBuilder: $3.EventSourcedEntity.create)
    ..hasRequiredFields = false
  ;

  EventSourcedEntityUpdatedEvent._() : super();
  factory EventSourcedEntityUpdatedEvent() => create();
  factory EventSourcedEntityUpdatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSourcedEntityUpdatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventSourcedEntityUpdatedEvent clone() => EventSourcedEntityUpdatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventSourcedEntityUpdatedEvent copyWith(void Function(EventSourcedEntityUpdatedEvent) updates) => super.copyWith((message) => updates(message as EventSourcedEntityUpdatedEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSourcedEntityUpdatedEvent create() => EventSourcedEntityUpdatedEvent._();
  EventSourcedEntityUpdatedEvent createEmptyInstance() => create();
  static $pb.PbList<EventSourcedEntityUpdatedEvent> createRepeated() => $pb.PbList<EventSourcedEntityUpdatedEvent>();
  @$core.pragma('dart2js:noInline')
  static EventSourcedEntityUpdatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSourcedEntityUpdatedEvent>(create);
  static EventSourcedEntityUpdatedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get originalName => $_getSZ(0);
  @$pb.TagNumber(1)
  set originalName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOriginalName() => $_has(0);
  @$pb.TagNumber(1)
  void clearOriginalName() => clearField(1);

  @$pb.TagNumber(2)
  $3.EventSourcedEntity get entity => $_getN(1);
  @$pb.TagNumber(2)
  set entity($3.EventSourcedEntity v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEntity() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntity() => clearField(2);
  @$pb.TagNumber(2)
  $3.EventSourcedEntity ensureEntity() => $_ensure(1);
}

class ReplicatedEntityAddedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedEntityAddedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<$3.ReplicatedEntity>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entity', subBuilder: $3.ReplicatedEntity.create)
    ..hasRequiredFields = false
  ;

  ReplicatedEntityAddedEvent._() : super();
  factory ReplicatedEntityAddedEvent() => create();
  factory ReplicatedEntityAddedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedEntityAddedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedEntityAddedEvent clone() => ReplicatedEntityAddedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedEntityAddedEvent copyWith(void Function(ReplicatedEntityAddedEvent) updates) => super.copyWith((message) => updates(message as ReplicatedEntityAddedEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedEntityAddedEvent create() => ReplicatedEntityAddedEvent._();
  ReplicatedEntityAddedEvent createEmptyInstance() => create();
  static $pb.PbList<ReplicatedEntityAddedEvent> createRepeated() => $pb.PbList<ReplicatedEntityAddedEvent>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedEntityAddedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedEntityAddedEvent>(create);
  static ReplicatedEntityAddedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $3.ReplicatedEntity get entity => $_getN(0);
  @$pb.TagNumber(1)
  set entity($3.ReplicatedEntity v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntity() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntity() => clearField(1);
  @$pb.TagNumber(1)
  $3.ReplicatedEntity ensureEntity() => $_ensure(0);
}

class ReplicatedEntityRemovedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedEntityRemovedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  ReplicatedEntityRemovedEvent._() : super();
  factory ReplicatedEntityRemovedEvent() => create();
  factory ReplicatedEntityRemovedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedEntityRemovedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedEntityRemovedEvent clone() => ReplicatedEntityRemovedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedEntityRemovedEvent copyWith(void Function(ReplicatedEntityRemovedEvent) updates) => super.copyWith((message) => updates(message as ReplicatedEntityRemovedEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedEntityRemovedEvent create() => ReplicatedEntityRemovedEvent._();
  ReplicatedEntityRemovedEvent createEmptyInstance() => create();
  static $pb.PbList<ReplicatedEntityRemovedEvent> createRepeated() => $pb.PbList<ReplicatedEntityRemovedEvent>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedEntityRemovedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedEntityRemovedEvent>(create);
  static ReplicatedEntityRemovedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class ReplicatedEntityUpdatedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedEntityUpdatedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalName', protoName: 'originalName')
    ..aOM<$3.ReplicatedEntity>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entity', subBuilder: $3.ReplicatedEntity.create)
    ..hasRequiredFields = false
  ;

  ReplicatedEntityUpdatedEvent._() : super();
  factory ReplicatedEntityUpdatedEvent() => create();
  factory ReplicatedEntityUpdatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedEntityUpdatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedEntityUpdatedEvent clone() => ReplicatedEntityUpdatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedEntityUpdatedEvent copyWith(void Function(ReplicatedEntityUpdatedEvent) updates) => super.copyWith((message) => updates(message as ReplicatedEntityUpdatedEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedEntityUpdatedEvent create() => ReplicatedEntityUpdatedEvent._();
  ReplicatedEntityUpdatedEvent createEmptyInstance() => create();
  static $pb.PbList<ReplicatedEntityUpdatedEvent> createRepeated() => $pb.PbList<ReplicatedEntityUpdatedEvent>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedEntityUpdatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedEntityUpdatedEvent>(create);
  static ReplicatedEntityUpdatedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get originalName => $_getSZ(0);
  @$pb.TagNumber(1)
  set originalName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOriginalName() => $_has(0);
  @$pb.TagNumber(1)
  void clearOriginalName() => clearField(1);

  @$pb.TagNumber(2)
  $3.ReplicatedEntity get entity => $_getN(1);
  @$pb.TagNumber(2)
  set entity($3.ReplicatedEntity v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEntity() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntity() => clearField(2);
  @$pb.TagNumber(2)
  $3.ReplicatedEntity ensureEntity() => $_ensure(1);
}

class ActionAddedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ActionAddedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<$3.Action>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', subBuilder: $3.Action.create)
    ..hasRequiredFields = false
  ;

  ActionAddedEvent._() : super();
  factory ActionAddedEvent() => create();
  factory ActionAddedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActionAddedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ActionAddedEvent clone() => ActionAddedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActionAddedEvent copyWith(void Function(ActionAddedEvent) updates) => super.copyWith((message) => updates(message as ActionAddedEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ActionAddedEvent create() => ActionAddedEvent._();
  ActionAddedEvent createEmptyInstance() => create();
  static $pb.PbList<ActionAddedEvent> createRepeated() => $pb.PbList<ActionAddedEvent>();
  @$core.pragma('dart2js:noInline')
  static ActionAddedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActionAddedEvent>(create);
  static ActionAddedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $3.Action get action => $_getN(0);
  @$pb.TagNumber(1)
  set action($3.Action v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => clearField(1);
  @$pb.TagNumber(1)
  $3.Action ensureAction() => $_ensure(0);
}

class ActionRemovedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ActionRemovedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  ActionRemovedEvent._() : super();
  factory ActionRemovedEvent() => create();
  factory ActionRemovedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActionRemovedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ActionRemovedEvent clone() => ActionRemovedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActionRemovedEvent copyWith(void Function(ActionRemovedEvent) updates) => super.copyWith((message) => updates(message as ActionRemovedEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ActionRemovedEvent create() => ActionRemovedEvent._();
  ActionRemovedEvent createEmptyInstance() => create();
  static $pb.PbList<ActionRemovedEvent> createRepeated() => $pb.PbList<ActionRemovedEvent>();
  @$core.pragma('dart2js:noInline')
  static ActionRemovedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActionRemovedEvent>(create);
  static ActionRemovedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class ActionUpdatedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ActionUpdatedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalName', protoName: 'originalName')
    ..aOM<$3.Action>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', subBuilder: $3.Action.create)
    ..hasRequiredFields = false
  ;

  ActionUpdatedEvent._() : super();
  factory ActionUpdatedEvent() => create();
  factory ActionUpdatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActionUpdatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ActionUpdatedEvent clone() => ActionUpdatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActionUpdatedEvent copyWith(void Function(ActionUpdatedEvent) updates) => super.copyWith((message) => updates(message as ActionUpdatedEvent)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ActionUpdatedEvent create() => ActionUpdatedEvent._();
  ActionUpdatedEvent createEmptyInstance() => create();
  static $pb.PbList<ActionUpdatedEvent> createRepeated() => $pb.PbList<ActionUpdatedEvent>();
  @$core.pragma('dart2js:noInline')
  static ActionUpdatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActionUpdatedEvent>(create);
  static ActionUpdatedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get originalName => $_getSZ(0);
  @$pb.TagNumber(1)
  set originalName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOriginalName() => $_has(0);
  @$pb.TagNumber(1)
  void clearOriginalName() => clearField(1);

  @$pb.TagNumber(2)
  $3.Action get action => $_getN(1);
  @$pb.TagNumber(2)
  set action($3.Action v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => clearField(2);
  @$pb.TagNumber(2)
  $3.Action ensureAction() => $_ensure(1);
}

class Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Result', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  Result._() : super();
  factory Result() => create();
  factory Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Result clone() => Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Result copyWith(void Function(Result) updates) => super.copyWith((message) => updates(message as Result)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Result create() => Result._();
  Result createEmptyInstance() => create();
  static $pb.PbList<Result> createRepeated() => $pb.PbList<Result>();
  @$core.pragma('dart2js:noInline')
  static Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Result>(create);
  static Result _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

