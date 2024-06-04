import 'package:flutter/material.dart';
import 'package:ultra_menu/data/values.dart';

class LoginIcon extends StatelessWidget {
  const LoginIcon({
    super.key,
    required this.image,
    required this.press,
  });
  final Function() press;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 15),
        InkWell(
          onTap: press,
          child: Image.asset(
            "$imageLocalPath/$image",
            width: 40,
            height: 40,
          ),
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
