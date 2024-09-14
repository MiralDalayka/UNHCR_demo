
import '../entities/job_entity.dart';

class JobModel extends JobEntity {
  JobModel({
    required super.jobId,
    required super.title,
    required super.company,
    required super.location,
    required super.description,
    required super.longDescription,
    required super.salary,
    required super.datePosted,
    required super.imageUrl,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      jobId: json['job_id'],
      title: json['title'],
      company: json['company'],
      location: json['location'],
      description: json['description'],
      longDescription: json['long_description'],
      salary: json['salary'],
      datePosted: json['date_posted'],
      imageUrl: json['image_url'],
    );
  }
}
