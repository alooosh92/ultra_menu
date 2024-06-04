import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/controllers/auth_controller.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/data/values.dart';
import 'package:ultra_menu/screen/auth/widget/elevated_defulte.dart';
import 'package:ultra_menu/screen/auth/widget/login_type.dart';
import 'package:ultra_menu/screen/auth/widget/row_text_button.dart';
import 'package:ultra_menu/screen/auth/widget/row_text_with_divider.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "$imageLocalPath/auth.png",
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            fit: BoxFit.fill,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
              color: ColorsManager.white,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Colors.transparent,
                  ColorsManager.white,
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("$imageLocalPath/logo.png"),
                ElevatedDefulte(
                  color: ColorsManager.primary,
                  widget: Text(
                    "singIn".tr,
                    style: FontManager.s18w700cW,
                  ),
                  press: AuthController.toSingInScreen,
                ),
                const LoginType(),
                const SizedBox(height: 20),
                const RowTextButton(
                  hintText: "noAccont",
                  textButton: "singUp",
                  press: AuthController.toSingUpScreen,
                ),
                const SizedBox(height: 10),
                const RowTextWithDivider(text: "OR"),
                const SizedBox(height: 10),
                ElevatedDefulte(
                  color: ColorsManager.darkGray,
                  press: AuthController.toQrScreen,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("$imageLocalPath/qr.png",
                          width: 20, height: 20),
                      const SizedBox(width: 15),
                      Text("scanQr".tr, style: FontManager.s18w700cW)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
