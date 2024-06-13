import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';

class DrawerOption extends StatelessWidget {
  const DrawerOption({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });
  final String text;
  final IconData icon;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: ColorsManager.blueGray,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Icon(
                icon,
                size: 35,
                color: ColorsManager.primary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                text.tr,
                style: FontManager.s14w500cB,
              ),
            )
          ],
        ),
      ),
    );
  }
}
