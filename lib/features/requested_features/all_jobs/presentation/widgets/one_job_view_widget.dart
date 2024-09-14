
//this widget is to view job on the all jobs page

import 'package:flutter/material.dart';
import 'package:unhcr_demo/core/constants/app_colors.dart';

import '../../../../../core/core.dart';




class JobWidget extends StatelessWidget {
  final String title;
  final String company;
  final String description;
  final String datePosted;
  final String imageUrl;

  const JobWidget({super.key,
    required this.title,
    required this.company,
    required this.description,
    required this.datePosted,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Card(
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyles.largeRegular,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    company,
                    style: TextStyles.smallMedium.copyWith(color: thirdColor),

                  ),
                  const SizedBox(height: 8.0),

                  Text(
                   description,
                    style: TextStyles.xSmallRegular.copyWith(overflow: TextOverflow.ellipsis),
                    maxLines:3,

                  ),
                  const SizedBox(height: 8.0),

                  // Date Posted
                  Text(
                    'Date Posted: $datePosted',
                    style: TextStyles.xSmallBold.copyWith(color: primaryColor)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
