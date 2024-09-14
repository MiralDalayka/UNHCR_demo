import 'package:flutter/material.dart';

import '../../../../additional_features/additional_features.dart';
import '../../../../shared/shared.dart';
import '../widgets/widgets.dart';
/*
The main home page
contains multiple actions and filtering for future features
SEARCH for SECTION to view the main components
 */
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
          child: HomePageBody(),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        //todo make separate slivers
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //SECTION: contain help and the app title
              Header(),
              SizedBox(height: 20),
              //SECTION: allow user to find a job by it's name
              SearchBarWidget(),
              //SECTION: analyse user resume to get it's info
              UploadResume(), //todo must be checked
              SizedBox(height: 10),
              //SECTION: categorized the jobs based on the type
              JobCategoryListView(),
              SizedBox(height: 10),
            ],
          ),
        ),
        //SECTION: view jobs based on selected category
        JobsView(),
      ],
    );
  }
}
