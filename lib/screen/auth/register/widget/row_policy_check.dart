import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/controllers/auth_controller.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/screen/auth/widget/elevated_defulte.dart';
import 'package:ultra_menu/screen/auth/widget/row_text_button.dart';

class RowPolicyCheck extends StatefulWidget {
  const RowPolicyCheck({
    super.key,
    required this.formKey,
    required this.name,
    required this.phone,
    required this.adress,
    required this.pass,
  });
  final GlobalKey<FormState> formKey;
  final String name;
  final String phone;
  final String adress;
  final String pass;
  @override
  State<RowPolicyCheck> createState() => _RowPolicyCheckState();
}

class _RowPolicyCheckState extends State<RowPolicyCheck> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: check,
              onChanged: (val) => setState(() {
                check = val!;
              }),
              activeColor: ColorsManager.primary,
            ),
            RowTextButton(
                hintText: "agree".tr,
                press: AuthController.toTermsScreen,
                textButton: "terms".tr),
            RowTextButton(
                hintText: "and".tr,
                press: AuthController.toPolicyScreen,
                textButton: "policy".tr),
          ],
        ),
        ElevatedDefulte(
          color: ColorsManager.primary,
          widget: Text(
            "singUp".tr,
            style: FontManager.s18w700cW,
          ),
          press: !check
              ? null
              : () => AuthController.singUpButton(
                    widget.formKey,
                    widget.name,
                    widget.pass,
                    widget.adress,
                    widget.phone,
                  ),
        ),
      ],
    );
  }
}
