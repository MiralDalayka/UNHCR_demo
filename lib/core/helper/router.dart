
// Class responsible for generating routes in the application
import 'package:flutter/material.dart';
import 'package:unhcr_demo/features/shared/entities/job_entity.dart';

import '../../features/additional_features/splash_application/presentation/splash_page.dart';
import '../../features/requested_features/all_jobs/presentation/pages/home_page.dart';
import '../../features/requested_features/job_details/presentation/job_detailes_page.dart';
import '../constants/app_routes.dart';

class MyRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        {
          return _route(SplashPage());
        }

      case allJobsRoute:
        {
          return _route(const HomePage());
        }
      case selectedJobDetailsRoute:
        {
          JobEntity entity = settings.arguments as JobEntity;
          return _route( FullJobDetailsScreen(job: entity,));
        }


      default:
        {
          final arg = settings.name as String;
          return _route(UndefineRoute(routeName: arg));
        }
    }
  }

// Helper method to create a MaterialPageRoute
  static MaterialPageRoute _route(Widget child) {
    return MaterialPageRoute(builder: (_) => child);
  }
}

// Widget to display an undefined route error
class UndefineRoute extends StatelessWidget {
  const UndefineRoute({super.key, required this.routeName});
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'This $routeName is Undefine Route',
        ),
      ),
    );
  }
}