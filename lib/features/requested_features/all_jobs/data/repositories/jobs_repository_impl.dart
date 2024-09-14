import 'package:dartz/dartz.dart';

import '../../../../../core/core.dart';
import '../../../../shared/shared.dart';
import '../../business/repositories/jobs_repository.dart';
import '../data_sources/jobs_remote_data_source.dart';


class JobsRepositoryImpl implements JobsRepository {
  final JobsRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  JobsRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<FailureModel, List<JobModel>>> getAllJobs() async {
    if (await networkInfo.isConnected!) {
      List<JobModel> remoteTemplate = await remoteDataSource.getAllJobs();

      return remoteTemplate.isEmpty
          ? Left(FailureModel(message: "Some thing went wrong try again"))
          : Right(remoteTemplate);
    } else {
      return Left(FailureModel(message: "No Internet Connection"));
    }
  }
}
