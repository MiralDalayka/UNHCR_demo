import 'package:data_connection_checker_tv/data_connection_checker.dart';

import 'package:flutter/material.dart';
import '../../../../../core/core.dart';

import '../../../../shared/shared.dart';
import '../../business/usecases/get_all_jobs.dart';
import '../../data/data_sources/jobs_remote_data_source.dart';
import '../../data/repositories/jobs_repository_impl.dart';

class JobsProvider extends ChangeNotifier {
  List<JobEntity>? job;
  FailureModel? failure;

  JobsProvider({
    this.job,
    this.failure,
  });

  void eitherFailureOrJobs() async {
    JobsRepositoryImpl repository = JobsRepositoryImpl(
      remoteDataSource: JobsRemoteDataSource(),
      networkInfo: NetworkInfoImpl(
        DataConnectionChecker(),
      ),
    );

    final failureOrJobs =
        await GetJobs(jobsRepository: repository).call();

    failureOrJobs.fold(
      (FailureModel newFailure) {
        job = null;
        failure = newFailure;
        notifyListeners();
      },
      (List<JobEntity> newTemplate) {
        job = newTemplate;
        failure = null;
        notifyListeners();
      },
    );
  }
}
