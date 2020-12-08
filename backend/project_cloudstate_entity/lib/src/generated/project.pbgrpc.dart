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
  static final _$getProject =
      $grpc.ClientMethod<$0.GetProjectCommand, $0.GetProjectResponse>(
          '/cloudstation.project.ProjectService/GetProject',
          ($0.GetProjectCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetProjectResponse.fromBuffer(value));

  ProjectServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddModelResponse> addModel($0.AddModelCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$addModel, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveModelResponse> removeModel(
      $0.RemoveModelCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$removeModel, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetProjectResponse> getProject(
      $0.GetProjectCommand request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getProject, request, options: options);
  }
}

abstract class ProjectServiceBase extends $grpc.Service {
  $core.String get $name => 'cloudstation.project.ProjectService';

  ProjectServiceBase() {
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
    $addMethod($grpc.ServiceMethod<$0.GetProjectCommand, $0.GetProjectResponse>(
        'GetProject',
        getProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetProjectCommand.fromBuffer(value),
        ($0.GetProjectResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddModelResponse> addModel_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddModelCommand> request) async {
    return addModel(call, await request);
  }

  $async.Future<$0.RemoveModelResponse> removeModel_Pre($grpc.ServiceCall call,
      $async.Future<$0.RemoveModelCommand> request) async {
    return removeModel(call, await request);
  }

  $async.Future<$0.GetProjectResponse> getProject_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetProjectCommand> request) async {
    return getProject(call, await request);
  }

  $async.Future<$0.AddModelResponse> addModel(
      $grpc.ServiceCall call, $0.AddModelCommand request);
  $async.Future<$0.RemoveModelResponse> removeModel(
      $grpc.ServiceCall call, $0.RemoveModelCommand request);
  $async.Future<$0.GetProjectResponse> getProject(
      $grpc.ServiceCall call, $0.GetProjectCommand request);
}
