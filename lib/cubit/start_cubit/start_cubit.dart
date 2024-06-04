// ignore_for_file: dead_code

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
//import 'package:http/http.dart' as http;
import 'package:ultra_menu/data/values.dart';
import 'package:ultra_menu/screen/home/home_screen.dart';
import 'package:ultra_menu/screen/auth/splash/splash_screen.dart';
import 'package:url_launcher/url_launcher.dart';
part 'start_state.dart';

class StartCubit extends Cubit<StartState> {
  StartCubit() : super(StartInitial());
  Future startApp() async {
    //check for update and check is login or not
    // http.Response responseUpdate = await http.get(Uri.parse('google.com'));
    //responseUpdate.statusCode == 200
    if (true) {
      // http.Response responseLogin = await http.get(Uri.parse('google.com'));
      // responseLogin.statusCode == 200
      if (false) {
        Get.offAll(const HomeScreen());
      } else {
        Get.offAll(const SplashScreen());
      }
    } else {
      Get.dialog(AlertDialog(
        actions: [
          TextButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  launchUrl(playStorUri);
                }
                if (Platform.isIOS) {
                  launchUrl(appStorUri);
                }
              },
              child: Text("update".tr)),
          TextButton(onPressed: () => Get.back(), child: Text("back".tr)),
        ],
        content: Text("newUpdate".tr, overflow: TextOverflow.fade),
        title: Text("note".tr),
      ));
    }
  }
}
