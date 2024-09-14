import 'dart:developer';

import 'package:dio/dio.dart';
import '../../errors/exceptions/exceptions.dart';
import '../dion_connection.dart';

class DioConsumer {
  final dio = DioConnection.instance;

  Future get(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response =
          await dio.get(path, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {

      handleDioExceptions(e);
    }
  }
}
