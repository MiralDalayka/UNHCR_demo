import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class DioHandling extends Failure {
  DioHandling(super.errorMessage);

  factory DioHandling.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return DioHandling('انتهت مهلة الاتصال');
      case DioExceptionType.sendTimeout:
        return DioHandling("انتهت مهلة الارسال");
      case DioExceptionType.receiveTimeout:
        return DioHandling("انتهت مهلة الاستلام");
      case DioExceptionType.badResponse:
        return dioHandlinResponse(
            error.response!.statusCode, error.response!.data);

      case DioExceptionType.connectionError:
        return DioHandling("مشكلة في الاتصال");
      case DioExceptionType.cancel:
        return DioHandling("تم الغاء الاتصال");

      default:
        return DioHandling("حدثت مشكلة في الاتصال الرجاء المحاولة لاحقا");
    }
  }
}

dioHandlinResponse(int? statusCode, dynamic response) {
  log(statusCode.toString());
  var res = jsonDecode(response);

  if (statusCode == 400 ||
      statusCode == 401 ||
      statusCode == 403 ||
      statusCode == 422) {
    //can changes
    return DioHandling(res['message']);
  } else if (statusCode == 404) {
    return DioHandling(res['message']);
  } else if (statusCode == 500) {
    // return Diohandling('problem'.tr());
  } else {
    // return Diohandling('connectionError'.tr());
  }
}