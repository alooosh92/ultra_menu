import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/screen/home/widget/bottom_home_navigation_bar.dart';
import 'package:ultra_menu/screen/home/widget/floating_action_button_home.dart';
import 'package:ultra_menu/widget/app_bar_def.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List item = [];
    return Scaffold(
      appBar: appBarDef("favorite".tr),
      bottomNavigationBar: const BottomHomeNavigationBar(index: 1),
      floatingActionButton: const FloatingActionButtonHome(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${item.length.toString()} ${'product'.tr}",
                  style: FontManager.s16w500cB,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height - 215,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        height: 175,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorsManager.blueGray),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
