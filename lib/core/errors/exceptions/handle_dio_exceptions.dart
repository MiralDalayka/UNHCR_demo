
import 'package:dio/dio.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';
import 'package:unhcr_demo/core/core.dart';

import 'server_exception.dart';

void handleDioExceptions(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerException(
          failureModel: FailureModel.fromJson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw ServerException(
          failureModel: FailureModel.fromJson(e.response!.data));

    case DioExceptionType.receiveTimeout:
      throw ServerException(
          failureModel: FailureModel.fromJson(e.response!.data));

    case DioExceptionType.badCertificate:
      throw ServerException(
          failureModel: FailureModel.fromJson(e.response!.data));

    case DioExceptionType.cancel:
      throw ServerException(
          failureModel: FailureModel.fromJson(e.response!.data));

    case DioExceptionType.connectionError:
      throw ServerException(
          failureModel: FailureModel.fromJson(e.response!.data));
    case DioExceptionType.unknown:
      throw ServerException(
          failureModel: FailureModel.fromJson(e.response!.data));
    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400: //Bad request
          throw ServerException(
              failureModel: FailureModel.fromJson(e.response!.data));
        case 401: //unauthorized
          throw ServerException(
              failureModel: FailureModel.fromJson(e.response!.data));
        case 403: //forbidden
          throw ServerException(
              failureModel: FailureModel.fromJson(e.response!.data));
        case 404: //not found
          throw ServerException(
              failureModel: FailureModel.fromJson(e.response!.data));
        case 409: //coffcient
          throw ServerException(
              failureModel: FailureModel.fromJson(e.response!.data));
        case 422: //Unprocessable Entity
          throw ServerException(
              failureModel: FailureModel.fromJson(e.response!.data));
        case 504: //server exception
          throw ServerException(
              failureModel: FailureModel.fromJson(e.response!.data));
      }
  }
}