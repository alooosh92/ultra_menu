import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ultra_menu/controllers/qr_controller.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/values.dart';

class QrStart extends StatelessWidget {
  const QrStart({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), QrController.getPermission);
    return Scaffold(
      backgroundColor: ColorsManager.primary,
      body: Center(
        child: Image.asset(
          "$imageLocalPath/qrIcon.png",
        ),
      ),
    );
  }
}
