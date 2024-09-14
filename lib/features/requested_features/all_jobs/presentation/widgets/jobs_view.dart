import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import '../../../../../core/core.dart';

import '../../../../shared/shared.dart';

import '../providers/jobs_provider.dart';
import 'one_job_view_widget.dart';

class JobsView extends StatelessWidget {
  const JobsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<JobEntity>? jobs = Provider.of<JobsProvider>(context).job;
    FailureModel? failure = Provider.of<JobsProvider>(context).failure;
    late Widget widget;
    if (jobs != null) {
      widget = SliverMasonryGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            JobEntity job = jobs[index];
            return InkWell(
              onTap: (){Navigator.of(context).pushNamed(selectedJobDetailsRoute,arguments: job);},

              child: JobWidget(

                company: job.company,
                datePosted: job.datePosted,
                description: job.description,
                imageUrl: job.imageUrl,
                title: job.title,
              ),
            );
          },
          childCount: jobs.length,
        ),
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
      );
    } else if (failure != null) {
      widget = SliverToBoxAdapter(child: ErrorMsg(msg: failure.message));
    } else {
      widget = const SliverToBoxAdapter(child: LoadingWidget());
    }
    return widget;
  }
}
