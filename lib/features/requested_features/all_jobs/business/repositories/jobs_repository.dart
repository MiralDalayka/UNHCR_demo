
import 'package:dartz/dartz.dart';

import '../../../../../core/core.dart';
import '../../../../shared/shared.dart';


abstract class JobsRepository {
  Future<Either<FailureModel, List<JobModel>>> getAllJobs();
}
