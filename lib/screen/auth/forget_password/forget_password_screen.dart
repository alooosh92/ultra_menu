import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/controllers/auth_controller.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/data/validator.dart';
import 'package:ultra_menu/widget/app_bar_def.dart';
import 'package:ultra_menu/screen/auth/widget/elevated_defulte.dart';
import 'package:ultra_menu/screen/auth/widget/input_text_defulte.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    return Scaffold(
      appBar: appBarDef(""),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'forgotPassword'.tr,
                  style: FontManager.s32w600cB,
                ),
                Text(
                  "forgotPasswordBody".tr,
                  style: FontManager.s14w400cDg,
                ),
                const SizedBox(height: 20),
                InputTextDefulte(
                  text: "EAOPN",
                  hint: "EAOPN",
                  controller: email,
                  texttype: TextInputType.emailAddress,
                  validator: (val) => ValidatorManager.emailValidator(val),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedDefulte(
                    color: ColorsManager.primary,
                    widget: Text(
                      "continue".tr,
                      style: FontManager.s18w700cW,
                    ),
                    press: () => AuthController.forgotPasswordButton(
                        formKey, email.text),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
