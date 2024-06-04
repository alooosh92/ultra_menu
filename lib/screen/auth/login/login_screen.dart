import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/controllers/auth_controller.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/data/validator.dart';
import 'package:ultra_menu/widget/app_bar_def.dart';
import 'package:ultra_menu/screen/auth/widget/elevated_defulte.dart';
import 'package:ultra_menu/screen/auth/widget/input_text_defulte.dart';
import 'package:ultra_menu/screen/auth/widget/login_type.dart';
import 'package:ultra_menu/screen/auth/widget/row_text_button.dart';
import 'package:ultra_menu/screen/auth/widget/row_text_with_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: appBarDef("singIn"),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                InputTextDefulte(
                  text: "EAOPN",
                  hint: "EAOPN",
                  controller: email,
                  texttype: TextInputType.emailAddress,
                  validator: (val) => ValidatorManager.emailValidator(val),
                ),
                InputTextDefulte(
                  text: "password",
                  hint: "enterPassword",
                  controller: password,
                  showPassword: true,
                  texttype: TextInputType.visiblePassword,
                  validator: (val) => ValidatorManager.passwordValidator(val),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: AuthController.toForgetScreen,
                      child: Text(
                        "forgotPassword".tr,
                        style: FontManager.s14w700cP,
                      ),
                    ),
                  ],
                ),
                ElevatedDefulte(
                  color: ColorsManager.primary,
                  widget: Text(
                    "singIn".tr,
                    style: FontManager.s18w700cW,
                  ),
                  press: () => AuthController.singInButton(
                      formKey, email.text, password.text),
                ),
                RowTextWithDivider(text: "OSIW".tr),
                const LoginType(),
                const SizedBox(height: 20),
                const RowTextButton(
                  hintText: "noAccont",
                  textButton: "singUp",
                  press: AuthController.toSingUpScreen,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
