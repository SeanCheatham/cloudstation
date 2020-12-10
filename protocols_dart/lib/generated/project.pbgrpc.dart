///
//  Generated code. Do not modify.
//  source: project.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'project.pb.dart' as $0;
export 'project.pb.dart';

class ProjectServiceClient extends $grpc.Client {
  static final _$getProject =
      $grpc.ClientMethod<$0.GetProjectCommand, $0.GetProjectResponse>(
          '/cloudstation.project.ProjectService/GetProject',
          ($0.GetProjectCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetProjectResponse.fromBuffer(value));
  static final _$addModel =
      $grpc.ClientMethod<$0.AddModelCommand, $0.AddModelResponse>(
          '/cloudstation.project.ProjectService/AddModel',
          ($0.AddModelCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddModelResponse.fromBuffer(value));
  static final _$removeModel =
      $grpc.ClientMethod<$0.RemoveModelCommand, $0.RemoveModelResponse>(
          '/cloudstation.project.ProjectService/RemoveModel',
          ($0.RemoveModelCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoveModelResponse.fromBuffer(value));
  static final _$updateModel =
      $grpc.ClientMethod<$0.UpdateModelCommand, $0.UpdateModelResponse>(
          '/cloudstation.project.ProjectService/UpdateModel',
          ($0.UpdateModelCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateModelResponse.fromBuffer(value));
  static final _$addEventSourcedEntity = $grpc.ClientMethod<
          $0.AddEventSourcedEntityCommand, $0.AddEventSourcedEntityResponse>(
      '/cloudstation.project.ProjectService/AddEventSourcedEntity',
      ($0.AddEventSourcedEntityCommand value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AddEventSourcedEntityResponse.fromBuffer(value));
  static final _$removeEventSourcedEntity = $grpc.ClientMethod<
          $0.RemoveEventSourcedEntityCommand,
          $0.RemoveEventSourcedEntityResponse>(
      '/cloudstation.project.ProjectService/RemoveEventSourcedEntity',
      ($0.RemoveEventSourcedEntityCommand value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.RemoveEventSourcedEntityResponse.fromBuffer(value));
  static final _$updateEventSourcedEntity = $grpc.ClientMethod<
          $0.UpdateEventSourcedEntityCommand,
          $0.UpdateEventSourcedEntityResponse>(
      '/cloudstation.project.ProjectService/UpdateEventSourcedEntity',
      ($0.UpdateEventSourcedEntityCommand value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.UpdateEventSourcedEntityResponse.fromBuffer(value));
  static final _$addReplicatedEntity = $grpc.ClientMethod<
          $0.AddReplicatedEntityCommand, $0.AddReplicatedEntityResponse>(
      '/cloudstation.project.ProjectService/AddReplicatedEntity',
      ($0.AddReplicatedEntityCommand value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AddReplicatedEntityResponse.fromBuffer(value));
  static final _$removeReplicatedEntity = $grpc.ClientMethod<
          $0.RemoveReplicatedEntityCommand, $0.RemoveReplicatedEntityResponse>(
      '/cloudstation.project.ProjectService/RemoveReplicatedEntity',
      ($0.RemoveReplicatedEntityCommand value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.RemoveReplicatedEntityResponse.fromBuffer(value));
  static final _$updateReplicatedEntity = $grpc.ClientMethod<
          $0.UpdateReplicatedEntityCommand, $0.UpdateReplicatedEntityResponse>(
      '/cloudstation.project.ProjectService/UpdateReplicatedEntity',
      ($0.UpdateReplicatedEntityCommand value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.UpdateReplicatedEntityResponse.fromBuffer(value));
  static final _$addAction =
      $grpc.ClientMethod<$0.AddActionCommand, $0.AddActionResponse>(
          '/cloudstation.project.ProjectService/AddAction',
          ($0.AddActionCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddActionResponse.fromBuffer(value));
  static final _$removeAction =
      $grpc.ClientMethod<$0.RemoveActionCommand, $0.RemoveActionResponse>(
          '/cloudstation.project.ProjectService/RemoveAction',
          ($0.RemoveActionCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoveActionResponse.fromBuffer(value));
  static final _$updateAction =
      $grpc.ClientMethod<$0.UpdateActionCommand, $0.UpdateActionResponse>(
          '/cloudstation.project.ProjectService/UpdateAction',
          ($0.UpdateActionCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateActionResponse.fromBuffer(value));
  static final _$verify =
      $grpc.ClientMethod<$0.VerifyCommand, $0.VerifyResponse>(
          '/cloudstation.project.ProjectService/Verify',
          ($0.VerifyCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.VerifyResponse.fromBuffer(value));
  static final _$deploy =
      $grpc.ClientMethod<$0.DeployCommand, $0.DeployResponse>(
          '/cloudstation.project.ProjectService/Deploy',
          ($0.DeployCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DeployResponse.fromBuffer(value));

  ProjectServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetProjectResponse> getProject(
      $0.GetProjectCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getProject, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddModelResponse> addModel($0.AddModelCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$addModel, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveModelResponse> removeModel(
      $0.RemoveModelCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$removeModel, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateModelResponse> updateModel(
      $0.UpdateModelCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$updateModel, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddEventSourcedEntityResponse> addEventSourcedEntity(
      $0.AddEventSourcedEntityCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$addEventSourcedEntity, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveEventSourcedEntityResponse>
      removeEventSourcedEntity($0.RemoveEventSourcedEntityCommand request,
          {$grpc.CallOptions options}) {
    return $createUnaryCall(_$removeEventSourcedEntity, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.UpdateEventSourcedEntityResponse>
      updateEventSourcedEntity($0.UpdateEventSourcedEntityCommand request,
          {$grpc.CallOptions options}) {
    return $createUnaryCall(_$updateEventSourcedEntity, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AddReplicatedEntityResponse> addReplicatedEntity(
      $0.AddReplicatedEntityCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$addReplicatedEntity, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveReplicatedEntityResponse>
      removeReplicatedEntity($0.RemoveReplicatedEntityCommand request,
          {$grpc.CallOptions options}) {
    return $createUnaryCall(_$removeReplicatedEntity, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.UpdateReplicatedEntityResponse>
      updateReplicatedEntity($0.UpdateReplicatedEntityCommand request,
          {$grpc.CallOptions options}) {
    return $createUnaryCall(_$updateReplicatedEntity, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AddActionResponse> addAction(
      $0.AddActionCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$addAction, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveActionResponse> removeAction(
      $0.RemoveActionCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$removeAction, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateActionResponse> updateAction(
      $0.UpdateActionCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$updateAction, request, options: options);
  }

  $grpc.ResponseFuture<$0.VerifyResponse> verify($0.VerifyCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$verify, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeployResponse> deploy($0.DeployCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$deploy, request, options: options);
  }
}

abstract class ProjectServiceBase extends $grpc.Service {
  $core.String get $name => 'cloudstation.project.ProjectService';

  ProjectServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetProjectCommand, $0.GetProjectResponse>(
        'GetProject',
        getProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetProjectCommand.fromBuffer(value),
        ($0.GetProjectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddModelCommand, $0.AddModelResponse>(
        'AddModel',
        addModel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddModelCommand.fromBuffer(value),
        ($0.AddModelResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RemoveModelCommand, $0.RemoveModelResponse>(
            'RemoveModel',
            removeModel_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RemoveModelCommand.fromBuffer(value),
            ($0.RemoveModelResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateModelCommand, $0.UpdateModelResponse>(
            'UpdateModel',
            updateModel_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateModelCommand.fromBuffer(value),
            ($0.UpdateModelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddEventSourcedEntityCommand,
            $0.AddEventSourcedEntityResponse>(
        'AddEventSourcedEntity',
        addEventSourcedEntity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddEventSourcedEntityCommand.fromBuffer(value),
        ($0.AddEventSourcedEntityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveEventSourcedEntityCommand,
            $0.RemoveEventSourcedEntityResponse>(
        'RemoveEventSourcedEntity',
        removeEventSourcedEntity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RemoveEventSourcedEntityCommand.fromBuffer(value),
        ($0.RemoveEventSourcedEntityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateEventSourcedEntityCommand,
            $0.UpdateEventSourcedEntityResponse>(
        'UpdateEventSourcedEntity',
        updateEventSourcedEntity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateEventSourcedEntityCommand.fromBuffer(value),
        ($0.UpdateEventSourcedEntityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddReplicatedEntityCommand,
            $0.AddReplicatedEntityResponse>(
        'AddReplicatedEntity',
        addReplicatedEntity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddReplicatedEntityCommand.fromBuffer(value),
        ($0.AddReplicatedEntityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveReplicatedEntityCommand,
            $0.RemoveReplicatedEntityResponse>(
        'RemoveReplicatedEntity',
        removeReplicatedEntity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RemoveReplicatedEntityCommand.fromBuffer(value),
        ($0.RemoveReplicatedEntityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateReplicatedEntityCommand,
            $0.UpdateReplicatedEntityResponse>(
        'UpdateReplicatedEntity',
        updateReplicatedEntity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateReplicatedEntityCommand.fromBuffer(value),
        ($0.UpdateReplicatedEntityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddActionCommand, $0.AddActionResponse>(
        'AddAction',
        addAction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddActionCommand.fromBuffer(value),
        ($0.AddActionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RemoveActionCommand, $0.RemoveActionResponse>(
            'RemoveAction',
            removeAction_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RemoveActionCommand.fromBuffer(value),
            ($0.RemoveActionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateActionCommand, $0.UpdateActionResponse>(
            'UpdateAction',
            updateAction_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateActionCommand.fromBuffer(value),
            ($0.UpdateActionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VerifyCommand, $0.VerifyResponse>(
        'Verify',
        verify_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VerifyCommand.fromBuffer(value),
        ($0.VerifyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeployCommand, $0.DeployResponse>(
        'Deploy',
        deploy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeployCommand.fromBuffer(value),
        ($0.DeployResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetProjectResponse> getProject_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetProjectCommand> request) async {
    return getProject(call, await request);
  }

  $async.Future<$0.AddModelResponse> addModel_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddModelCommand> request) async {
    return addModel(call, await request);
  }

  $async.Future<$0.RemoveModelResponse> removeModel_Pre($grpc.ServiceCall call,
      $async.Future<$0.RemoveModelCommand> request) async {
    return removeModel(call, await request);
  }

  $async.Future<$0.UpdateModelResponse> updateModel_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateModelCommand> request) async {
    return updateModel(call, await request);
  }

  $async.Future<$0.AddEventSourcedEntityResponse> addEventSourcedEntity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddEventSourcedEntityCommand> request) async {
    return addEventSourcedEntity(call, await request);
  }

  $async.Future<$0.RemoveEventSourcedEntityResponse>
      removeEventSourcedEntity_Pre($grpc.ServiceCall call,
          $async.Future<$0.RemoveEventSourcedEntityCommand> request) async {
    return removeEventSourcedEntity(call, await request);
  }

  $async.Future<$0.UpdateEventSourcedEntityResponse>
      updateEventSourcedEntity_Pre($grpc.ServiceCall call,
          $async.Future<$0.UpdateEventSourcedEntityCommand> request) async {
    return updateEventSourcedEntity(call, await request);
  }

  $async.Future<$0.AddReplicatedEntityResponse> addReplicatedEntity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddReplicatedEntityCommand> request) async {
    return addReplicatedEntity(call, await request);
  }

  $async.Future<$0.RemoveReplicatedEntityResponse> removeReplicatedEntity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RemoveReplicatedEntityCommand> request) async {
    return removeReplicatedEntity(call, await request);
  }

  $async.Future<$0.UpdateReplicatedEntityResponse> updateReplicatedEntity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateReplicatedEntityCommand> request) async {
    return updateReplicatedEntity(call, await request);
  }

  $async.Future<$0.AddActionResponse> addAction_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddActionCommand> request) async {
    return addAction(call, await request);
  }

  $async.Future<$0.RemoveActionResponse> removeAction_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RemoveActionCommand> request) async {
    return removeAction(call, await request);
  }

  $async.Future<$0.UpdateActionResponse> updateAction_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateActionCommand> request) async {
    return updateAction(call, await request);
  }

  $async.Future<$0.VerifyResponse> verify_Pre(
      $grpc.ServiceCall call, $async.Future<$0.VerifyCommand> request) async {
    return verify(call, await request);
  }

  $async.Future<$0.DeployResponse> deploy_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DeployCommand> request) async {
    return deploy(call, await request);
  }

  $async.Future<$0.GetProjectResponse> getProject(
      $grpc.ServiceCall call, $0.GetProjectCommand request);
  $async.Future<$0.AddModelResponse> addModel(
      $grpc.ServiceCall call, $0.AddModelCommand request);
  $async.Future<$0.RemoveModelResponse> removeModel(
      $grpc.ServiceCall call, $0.RemoveModelCommand request);
  $async.Future<$0.UpdateModelResponse> updateModel(
      $grpc.ServiceCall call, $0.UpdateModelCommand request);
  $async.Future<$0.AddEventSourcedEntityResponse> addEventSourcedEntity(
      $grpc.ServiceCall call, $0.AddEventSourcedEntityCommand request);
  $async.Future<$0.RemoveEventSourcedEntityResponse> removeEventSourcedEntity(
      $grpc.ServiceCall call, $0.RemoveEventSourcedEntityCommand request);
  $async.Future<$0.UpdateEventSourcedEntityResponse> updateEventSourcedEntity(
      $grpc.ServiceCall call, $0.UpdateEventSourcedEntityCommand request);
  $async.Future<$0.AddReplicatedEntityResponse> addReplicatedEntity(
      $grpc.ServiceCall call, $0.AddReplicatedEntityCommand request);
  $async.Future<$0.RemoveReplicatedEntityResponse> removeReplicatedEntity(
      $grpc.ServiceCall call, $0.RemoveReplicatedEntityCommand request);
  $async.Future<$0.UpdateReplicatedEntityResponse> updateReplicatedEntity(
      $grpc.ServiceCall call, $0.UpdateReplicatedEntityCommand request);
  $async.Future<$0.AddActionResponse> addAction(
      $grpc.ServiceCall call, $0.AddActionCommand request);
  $async.Future<$0.RemoveActionResponse> removeAction(
      $grpc.ServiceCall call, $0.RemoveActionCommand request);
  $async.Future<$0.UpdateActionResponse> updateAction(
      $grpc.ServiceCall call, $0.UpdateActionCommand request);
  $async.Future<$0.VerifyResponse> verify(
      $grpc.ServiceCall call, $0.VerifyCommand request);
  $async.Future<$0.DeployResponse> deploy(
      $grpc.ServiceCall call, $0.DeployCommand request);
}
