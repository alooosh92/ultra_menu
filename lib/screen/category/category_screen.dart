import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/data/values.dart';
import 'package:ultra_menu/screen/category_item/category_item.dart';
import 'package:ultra_menu/screen/home/widget/bottom_home_navigation_bar.dart';
import 'package:ultra_menu/screen/home/widget/floating_action_button_home.dart';
import 'package:ultra_menu/widget/app_bar_def.dart';

class CategortScreen extends StatelessWidget {
  const CategortScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDef("category".tr),
      bottomNavigationBar: const BottomHomeNavigationBar(index: 2),
      floatingActionButton: const FloatingActionButtonHome(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "topCategories".tr,
                  style: FontManager.s16w700cB,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Get.to(const CategoryItem(appText: "drink"));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorsManager.gray,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('$imageLocalPath/bg.png'),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Fast Food",
                          style: FontManager.s16w700cW,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
