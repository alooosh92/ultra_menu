import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/screen/auth/auth_screen.dart';
import 'package:ultra_menu/screen/auth/forget_password/forget_password_screen.dart';
import 'package:ultra_menu/screen/auth/forget_password/widget/forget_password_type.dart';
import 'package:ultra_menu/screen/auth/login/login_screen.dart';
import 'package:ultra_menu/screen/auth/otp/otp_screen.dart';
import 'package:ultra_menu/screen/auth/register/register_screen.dart';
import 'package:ultra_menu/screen/auth/reset_password/reset_password.dart';
import 'package:ultra_menu/screen/qr/qr_screen/qr_screen.dart';
import 'package:ultra_menu/screen/auth/widget/dialog_done.dart';

class AuthController {
  static void skipSplash() {
    Get.offAll(const AuthScreen());
  }

  static void toSingInScreen() {
    Get.offAll(const LoginScreen());
  }

  static void toSingUpScreen() {
    Get.to(const RegisterScreen());
  }

  static void toQrScreen() {
    Get.to(const QrScreen());
  }

  static void toResetPasswordScreen(String username) {
    Get.off(ResetPasswordScreen(username: username));
  }

  static void toForgetScreen() {
    Get.to(const ForgetPasswordScreen());
  }

  static void toTermsScreen() {}
  static void toPolicyScreen() {}
  static void googleLogin() {}
  static void facebookLogin() {}
  static void appleLogin() {}

  static void singInButton(
      GlobalKey<FormState> key, String username, String password) {}

  static void forgotPasswordButton(GlobalKey<FormState> key, String email) {
    Get.dialog(
      AlertDialog(
        title: Text("forgotPassword".tr, style: FontManager.s32w600cB),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "typeRestPass".tr,
              style: FontManager.s16w400cDg,
            ),
            ForgetPasswordType(
              email: email,
              phone: "+963956108642",
            ),
          ],
        ),
      ),
    );
  }

  static void dialogTypeRestPassword(int type, String username) {
    Get.off(OTPScreen(
      username: username,
    ));
  }

  static void otpButton(String username, String otp, String type) {
    if (type == "restPassword") {
      toResetPasswordScreen;
    } else if (type == "register") {}
  }

  static void resetPasswordButton(
      GlobalKey<FormState> key, String username, String pass) {
    if (key.currentState!.validate()) {
      Get.dialog(const DialogDone(
        icon: Icons.check_circle,
        title: "passwordChanged",
        hint: "successfullyReset",
      )).then(
        (value) => Get.offAll(const LoginScreen()),
      );
    }
  }

  static void singUpButton(
    GlobalKey<FormState> key,
    String name,
    String password,
    String adress,
    String phone,
  ) {
    if (key.currentState!.validate()) {
      Get.dialog(const DialogDone(
        icon: FontAwesomeIcons.userShield,
        title: "success",
        hint: "NACS",
      )).then(
        (value) => toSingInScreen,
      );
    }
  }

  static void reSentCode(String username) {}
}
