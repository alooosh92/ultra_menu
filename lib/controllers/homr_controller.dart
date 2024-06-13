import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/screen/category/category_screen.dart';
import 'package:ultra_menu/screen/favorite/favorite_screen.dart';
import 'package:ultra_menu/screen/home/home_screen.dart';
import 'package:ultra_menu/screen/notification/notification.dart';

class HomrController {
  static String getName() {
    return "Alaa";
  }

  static bool getAlert() {
    return true;
  }

  static List<String> listCategory() {
    return ["All", "Burger", "Petzaa", "Meet"];
  }

  static void toAlertMessaging() {
    Get.to(const NotificationScreen());
  }

  static void drowerButton(GlobalKey<ScaffoldState> key) {
    key.currentState!.openDrawer();
  }

  static void categoryChange(int index) {}
  static void flottingButton() {}
  static void buttonBarButton(int index) {
    switch (index) {
      case 0:
        Get.off(const HomeScreen());
      case 1:
        Get.to(const FavoriteScreen());
      case 2:
        Get.to(const CategortScreen());
    }
  }

  static void cardPress() {}
}
