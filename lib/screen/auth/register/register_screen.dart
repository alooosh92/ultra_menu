import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/data/validator.dart';
import 'package:ultra_menu/screen/auth/register/widget/row_policy_check.dart';
import 'package:ultra_menu/widget/app_bar_def.dart';
import 'package:ultra_menu/screen/auth/widget/input_text_defulte.dart';
import 'package:ultra_menu/screen/auth/widget/login_type.dart';
import 'package:ultra_menu/screen/auth/widget/row_text_with_divider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController name = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController adress = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController rePassword = TextEditingController();
    return Scaffold(
      appBar: appBarDef("singUp".tr),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                InputTextDefulte(
                    controller: name,
                    hint: "fullName".tr,
                    text: "enterName".tr,
                    validator: (val) => ValidatorManager.textNotEmpty(val),
                    texttype: TextInputType.text),
                InputTextDefulte(
                    controller: phone,
                    hint: "EAOPN".tr,
                    text: "EAOPN".tr,
                    validator: (email) =>
                        ValidatorManager.emailValidator(email),
                    texttype: TextInputType.emailAddress),
                InputTextDefulte(
                    controller: adress,
                    hint: "yourAddress".tr,
                    text: "enterAdress".tr,
                    validator: (val) => ValidatorManager.textNotEmpty(val),
                    texttype: TextInputType.streetAddress),
                InputTextDefulte(
                    controller: password,
                    hint: "password".tr,
                    text: "enterPassword".tr,
                    showPassword: true,
                    validator: (pass) =>
                        ValidatorManager.passwordValidator(pass),
                    texttype: TextInputType.visiblePassword),
                InputTextDefulte(
                    controller: rePassword,
                    hint: "confirmPassword".tr,
                    text: "enterPassword".tr,
                    showPassword: true,
                    validator: (pass) => ValidatorManager.rePasswordValidator(
                        password.text, pass),
                    texttype: TextInputType.visiblePassword),
                RowPolicyCheck(
                  formKey: formKey,
                  adress: adress.text,
                  name: name.text,
                  pass: password.text,
                  phone: phone.text,
                ),
                RowTextWithDivider(text: "OSIW".tr),
                const LoginType(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
