import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';


class NavigationItem extends StatelessWidget {
  final IconData filledIcon;
  final IconData outlinedIcon;
  final bool isSelected;
  final VoidCallback onPressed;

  const NavigationItem({super.key,
    required this.filledIcon,
    required this.outlinedIcon,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.white : Colors.transparent,
      ),
      child: IconButton(
        icon: Icon(
          isSelected ? filledIcon : outlinedIcon,
          color:  isSelected ?thirdColor :thirdColor,
        ),
        onPressed: onPressed,
      ),
    );

  }
}