import 'package:flutter/material.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';

class RowForGetRest extends StatelessWidget {
  const RowForGetRest({
    super.key,
    required this.hint,
    required this.iconType,
    required this.isCheck,
    required this.title,
    required this.press,
  });
  final IconData iconType;
  final bool isCheck;
  final String title;
  final String hint;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10),
        elevation: 0,
        color: Colors.transparent,
        shape: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
                color: isCheck ? ColorsManager.primary : ColorsManager.gray)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                iconType,
                color: ColorsManager.darkGray,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: FontManager.s12w400cG),
                  Text(hint, style: FontManager.s14w500cB),
                ],
              ),
              Icon(
                Icons.check_circle,
                color: isCheck ? ColorsManager.primary : Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
