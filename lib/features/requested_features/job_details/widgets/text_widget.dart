import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.title, required this.info});
final String title;
final String info;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(4),
      child: Text.rich(

        TextSpan(
          children: [
            TextSpan(
              text: title,
              style: TextStyles.largeBold,
            ),
            TextSpan(
              text:info,
              style: TextStyles.largeBold.copyWith(color: thirdColor),
            ),
          ],
        ),
      ),
    );
  }
}
