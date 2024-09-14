import '../models/error_model.dart';


class ServerException implements Exception {
  final FailureModel failureModel;
  ServerException({required this.failureModel});
}