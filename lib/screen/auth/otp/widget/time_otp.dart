import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/controllers/auth_controller.dart';
import 'package:ultra_menu/screen/auth/widget/row_text_button.dart';

class TimerOtp extends StatefulWidget {
  const TimerOtp({super.key, required this.username});
  final String username;
  @override
  State<TimerOtp> createState() => _TimerOtpState();
}

class _TimerOtpState extends State<TimerOtp> {
  int t = 120;
  int m = 0;
  int s = 0;
  var ss = "00";
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      if (t > 0) {
        setState(() {
          t--;
          m = t ~/ 60;
          s = t - (t ~/ 60 * 60);
          s < 10 ? ss = "0$s" : ss = "$s";
        });
      }
    });
    return Column(
      children: [
        RowTextButton(
            hintText: "resndHint".tr,
            press: t == 0
                ? () {
                    setState(() {
                      t = 120;
                      AuthController.reSentCode(widget.username);
                    });
                  }
                : () {},
            textButton: "resnd".tr),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.access_time),
            const SizedBox(width: 10),
            Text("0$m:$ss")
          ],
        ),
      ],
    );
  }
}
