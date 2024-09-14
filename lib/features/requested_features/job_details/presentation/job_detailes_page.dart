import 'package:flutter/material.dart';
import '../../../../core/core.dart';
import '../../../shared/shared.dart';
import '../widgets/text_widget.dart';

class FullJobDetailsScreen extends StatelessWidget {
  final JobEntity job;

  const FullJobDetailsScreen({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          job.title,
          style: TextStyles.heading3Bold.copyWith(color: Colors.white),
        ),
        backgroundColor: primaryColor,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      job.imageUrl,
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                      color: Colors.black.withOpacity(0.2),
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                  //todo make it clickable
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'APPLY',
                        style: TextStyles.mediumBold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          title: 'Company: ',
                          info: job.company,
                        ),
                        TextWidget(
                          title: 'Location: ',
                          info: job.location,
                        ),
                        TextWidget(
                          title: 'Salary: ',
                          info: job.salary,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Job Description',
                        style: TextStyles.largeBold.copyWith(
                          color: primaryColor,
                        ),
                      ),
                      const Divider(),
                      Text(
                        job.description,
                        style: TextStyles.mediumRegular.copyWith(
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        job.longDescription,
                        style: TextStyles.mediumRegular.copyWith(
                          height: 1.5,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),

              // Posted Date
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(
                      title: 'Posted: ',
                      info: job.datePosted,
                    ),
                    TextWidget(
                      title: 'Id: ',
                      info: job.jobId,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
