import 'package:flutter/material.dart';
import 'package:ultra_menu/controllers/auth_controller.dart';
import 'package:ultra_menu/screen/auth/widget/login_icon.dart';

class LoginType extends StatelessWidget {
  const LoginType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginIcon(image: "google.png", press: AuthController.googleLogin),
            LoginIcon(
                image: "facebook.png", press: AuthController.facebookLogin),
            LoginIcon(image: "apple.png", press: AuthController.appleLogin),
          ],
        ),
      ],
    );
  }
}
