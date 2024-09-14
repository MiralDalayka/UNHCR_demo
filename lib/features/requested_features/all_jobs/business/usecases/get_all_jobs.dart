import 'package:dartz/dartz.dart';
import 'package:unhcr_demo/features/shared/models/job_model.dart';

import '../../../../../core/core.dart';
import '../../../../shared/shared.dart';
import '../repositories/jobs_repository.dart';

class GetJobs {
  final JobsRepository jobsRepository;

  GetJobs({required this.jobsRepository});

  Future<Either<FailureModel, List<JobModel>>> call() async {
    return await jobsRepository.getAllJobs();
  }
}
