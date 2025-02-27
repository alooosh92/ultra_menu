import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ultra_menu/controllers/homr_controller.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/theme_service.dart';

class BottomHomeNavigationBar extends StatelessWidget {
  const BottomHomeNavigationBar({
    super.key,
    required this.index,
  });
  final int? index;
  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: const [
        Icons.home_sharp,
        Icons.favorite_border,
        Icons.grid_view_outlined,
        Icons.person
      ],
      backgroundColor: ThemeService.isLightTheme()
          ? ColorsManager.white
          : ColorsManager.veryDarkGray,
      activeColor: index == null ? ColorsManager.primary : ColorsManager.black,
      inactiveColor: ColorsManager.primary,
      elevation: 10,
      activeIndex: index ?? 0,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.defaultEdge,
      leftCornerRadius: 0,
      rightCornerRadius: 0,
      onTap: (index) => HomrController.buttonBarButton(index),
    );
  }
}
