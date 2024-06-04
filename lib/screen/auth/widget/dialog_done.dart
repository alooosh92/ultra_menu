import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';

class DialogDone extends StatelessWidget {
  const DialogDone({
    super.key,
    required this.icon,
    required this.title,
    required this.hint,
  });
  final IconData icon;
  final String title;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(title.tr),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: ColorsManager.primary, size: 50),
          const SizedBox(height: 15),
          Text(
            hint.tr,
            style: FontManager.s14w500cB,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
