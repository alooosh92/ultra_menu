import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/controllers/auth_controller.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/data/validator.dart';
import 'package:ultra_menu/widget/app_bar_def.dart';
import 'package:ultra_menu/screen/auth/widget/elevated_defulte.dart';
import 'package:ultra_menu/screen/auth/widget/input_text_defulte.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.username});
  final String username;
  @override
  Widget build(BuildContext context) {
    TextEditingController pass = TextEditingController();
    TextEditingController repass = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: appBarDef("resetPassword".tr),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'resetPassword'.tr,
                  style: FontManager.s32w600cB,
                ),
                Text(
                  "resetPasswordBody".tr,
                  style: FontManager.s14w400cDg,
                ),
                const SizedBox(height: 20),
                InputTextDefulte(
                  text: "newPassword",
                  hint: "********",
                  controller: pass,
                  showPassword: true,
                  texttype: TextInputType.visiblePassword,
                  validator: (val) => ValidatorManager.passwordValidator(val),
                ),
                InputTextDefulte(
                  text: "confirmPassword",
                  hint: "********",
                  controller: repass,
                  showPassword: true,
                  texttype: TextInputType.visiblePassword,
                  validator: (val) =>
                      ValidatorManager.rePasswordValidator(pass.text, val),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedDefulte(
                      color: ColorsManager.primary,
                      widget: Text(
                        "continue".tr,
                        style: FontManager.s18w700cW,
                      ),
                      press: () => AuthController.resetPasswordButton(
                          formKey, username, pass.text)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
