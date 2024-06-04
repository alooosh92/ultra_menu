import 'dart:async';

import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:ultra_menu/screen/qr/qr_screen/qr_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class QrController {
  static void getPermission() async {
    () async {
      await Permission.camera.request();
      if (await Permission.camera.status == PermissionStatus.granted) {
        Get.off(const QrScreen());
      } else {
        Get.back();
      }
    };
  }

  static void catchQR(Barcode barcode) {
    Timer(const Duration(seconds: 2), () {
      launchUrl(Uri.parse(barcode.code!));
    });
  }
}
