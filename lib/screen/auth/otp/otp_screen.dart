import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/controllers/auth_controller.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/screen/auth/otp/widget/time_otp.dart';
import 'package:ultra_menu/widget/app_bar_def.dart';
import 'package:ultra_menu/screen/auth/widget/elevated_defulte.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key, required this.username});
  final String username;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String? code;
    return Scaffold(
      appBar: appBarDef("OTP"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'emailVerification'.tr,
                style: FontManager.s32w600cB,
              ),
              Text(
                "emailVerificationBody".tr + username,
                style: FontManager.s14w400cDg,
              ),
              const SizedBox(height: 20),
              OtpTextField(
                keyboardType: TextInputType.number,
                numberOfFields: 4,
                borderRadius: BorderRadius.circular(10),
                textStyle: FontManager.s32w600cB,
                fieldWidth: 60,
                showFieldAsBox: true,
                focusedBorderColor: ColorsManager.primary,
                onCodeChanged: (value) => code = value,
              ),
              const SizedBox(height: 20),
              TimerOtp(username: username),
              const SizedBox(height: 20),
              Center(
                child: ElevatedDefulte(
                  color: ColorsManager.primary,
                  widget: Text(
                    "continue".tr,
                    style: FontManager.s18w700cW,
                  ),
                  press: () => AuthController.otpButton(
                      username, code ?? "", "restPassword"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
