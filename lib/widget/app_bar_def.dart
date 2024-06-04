import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';

AppBar appBarDef(String text, {double? elevation}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: ColorsManager.white,
    surfaceTintColor: ColorsManager.white,
    shadowColor: ColorsManager.gray,
    toolbarHeight: 100,
    elevation: elevation ?? 5,
    leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back_ios,
          color: ColorsManager.primary,
        )),
    title: Text(
      text.tr,
      style: FontManager.s20w700cB,
    ),
  );
}
