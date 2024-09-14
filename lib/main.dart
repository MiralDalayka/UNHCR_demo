import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/constants/app_routes.dart';
import 'core/helper/router.dart';
import 'features/requested_features/all_jobs/presentation/providers/jobs_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => JobsProvider(),
          ),

        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,

            title: 'UNHCR DEMO',
            initialRoute: splashScreen,
          onGenerateRoute: MyRouter.generateRoute,
        ),
      );
    }

  }
}


