import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/screen/home/widget/drawer_option.dart';

class DrawerDefulte extends StatelessWidget {
  const DrawerDefulte({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CircleAvatar(
                    maxRadius: 40,
                    minRadius: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alaa baaj',
                        style: FontManager.s18w400cB,
                        overflow: TextOverflow.fade,
                      ),
                      Text(
                        'Dubai,alsharqa street',
                        style: FontManager.s12w400cG,
                        overflow: TextOverflow.fade,
                      ),
                      Text(
                        '0956108462',
                        style: FontManager.s12w400cG,
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Text("profile", style: FontManager.s12w400cG),
            DrawerOption(icon: Icons.person, text: "personData", press: () {}),
            DrawerOption(icon: Icons.settings, text: "settings", press: () {}),
            Text("support", style: FontManager.s12w400cG),
            DrawerOption(icon: Icons.info, text: "helpCenter", press: () {}),
            DrawerOption(
                icon: Icons.person_add_alt,
                text: "addAnotherAccount",
                press: () {}),
            DrawerOption(icon: Icons.language, text: "language", press: () {}),
            DrawerOption(
              icon: Icons.dark_mode_outlined,
              text: "themeMode",
              press: () {
                var storage = GetStorage();
                bool theme = storage.read("theme");
                if (theme) {
                  storage.write("theme", false);
                  Get.changeThemeMode(ThemeMode.dark);
                } else {
                  storage.write("theme", true);
                  Get.changeThemeMode(ThemeMode.light);
                }
              },
            ),
            DrawerOption(icon: Icons.logout, text: "logOut", press: () {}),
          ],
        ),
      ),
    );
  }
}
