import 'package:flutter/material.dart';
import 'package:unhcr_demo/core/constants/app_colors.dart';

import 'widgets/nav_bar_item.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //todo must be replaced
    final List<NavigationItem> items = [
      NavigationItem(
        filledIcon: Icons.home,
        outlinedIcon: Icons.home_outlined,
        isSelected: _selectedIndex == 0,
        onPressed: () => _onItemTapped(0),
      ),
      NavigationItem(
        filledIcon:  Icons.explore,
        outlinedIcon: Icons.explore_outlined,

        isSelected: _selectedIndex == 1,
        onPressed: () => _onItemTapped(1),
      ),
      NavigationItem(
        filledIcon: Icons.save,
        outlinedIcon:Icons.save_outlined,
        isSelected: _selectedIndex == 2,
        onPressed: () => _onItemTapped(2),
      ),
      NavigationItem(
        filledIcon: Icons.person,
        outlinedIcon:Icons.person_outline,

        isSelected: _selectedIndex == 3,
        onPressed: () => _onItemTapped(3),
      ),
    ];

    return ClipRRect(

      borderRadius: const BorderRadius.all(Radius.circular(40)),
      child: BottomAppBar(
        color: primaryColor.withOpacity(0.3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items,
        ),
      ),
    );
  }
}
