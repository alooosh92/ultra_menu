import 'package:flutter/material.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';

class RowTextWithDivider extends StatelessWidget {
  const RowTextWithDivider({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 4,
          child: const Divider(
            color: ColorsManager.darkGray,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            text,
            style: FontManager.s16w400cDg,
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 4,
          child: const Divider(
            color: ColorsManager.darkGray,
          ),
        ),
      ],
    );
  }
}
