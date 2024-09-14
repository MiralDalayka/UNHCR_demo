
import '../../../../../core/helper/helpers.dart';
import '../../../../shared/shared.dart';

class JobsRemoteDataSource {
  DioConsumer dio = DioConsumer();

  Future<List<JobModel>> getAllJobs() async {
    final List<dynamic> response = await dio.get(EndPoint.baseUrl)??[];
    return response.map((job) => JobModel.fromJson(job)).toList();
  }
}
