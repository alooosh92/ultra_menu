import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/screen/home/widget/bottom_home_navigation_bar.dart';
import 'package:ultra_menu/screen/home/widget/floating_action_button_home.dart';
import 'package:ultra_menu/widget/app_bar_def.dart';
import 'package:ultra_menu/widget/list_item.dart';
import 'package:ultra_menu/widget/search_row.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.appText});
  final String appText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDef(appText),
      bottomNavigationBar: const BottomHomeNavigationBar(index: null),
      floatingActionButton: const FloatingActionButtonHome(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SearchRow(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${'found'.tr} 10 ${'results'.tr}",
                  style: FontManager.s16w700cB,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Expanded(
              child: ListItem(list: [1, 2, 3]),
            ),
          ],
        ),
      ),
    );
  }
}
