/*
JobCategoryListView:
list to view all categories on jobs
 */

import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';



class JobCategoryListView extends StatelessWidget {
  const JobCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 40,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return TextButton(
              onPressed: () {
                //todo: navigate
              },
              style: ButtonStyle(
                //todo: back to change the state
                  backgroundColor:
                  MaterialStatePropertyAll(primaryColor.withOpacity(0.3))),
              child: Text(categories[index],style: TextStyles.smallMedium,),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
        ),
      ),
    );
  }
}

//todo must be replaced

final categories = ["All", "Newest", "Popular", "IT", "Health"];