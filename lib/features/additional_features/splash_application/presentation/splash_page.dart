import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/constants.dart';
import '../../../requested_features/all_jobs/presentation/providers/jobs_provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<JobsProvider>(context, listen: false).eitherFailureOrJobs(
    );
    _navigateToAllJobs();
  }

  Future<void> _navigateToAllJobs() async {
    await Future.delayed(const Duration(seconds: 1)); //todo replace it with load data
    if (mounted) {
      Navigator.of(context).pushReplacementNamed(allJobsRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              PngIconsAnimations.splashAnimation,
              height: 400,
              width: 400,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Discover Your Dream Job",
              style: TextStyles.heading3Bold,
            ),
          ],
        ),
      ),
    );
  }
}
