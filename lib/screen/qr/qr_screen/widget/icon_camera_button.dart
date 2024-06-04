import 'package:flutter/material.dart';
import 'package:ultra_menu/data/colors.dart';

class IconCameraButton extends StatelessWidget {
  const IconCameraButton({super.key, required this.icon, required this.press});
  final Function() press;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: press,
      icon: Icon(
        icon,
        color: ColorsManager.gray,
        size: 25,
      ),
    );
  }
}
