import 'package:flutter/material.dart';

import '../../../core/core.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15),
      child:  Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("UNHCR Jobs",style: TextStyles.mediumBold.copyWith(color: thirdColor),),
          const Icon(Icons.contact_support_outlined,color: thirdColor,)
        ],
      ),
    );
  }
}
