import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SearchBar(
        // enabled: false,
        shadowColor: const WidgetStatePropertyAll(Colors.transparent),
        side: const WidgetStatePropertyAll(BorderSide(color: thirdColor)),
        leading: const Icon(
          Icons.search,
          color: primaryColor,
        ),
        backgroundColor: const WidgetStatePropertyAll(Colors.white),
        hintText: "Search",
        hintStyle: WidgetStatePropertyAll(TextStyles.largeBold.copyWith(color: primaryColor)),


      ),
    );
  }
}
