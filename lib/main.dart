import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ultra_menu/data/locale-master/localizations_manager.dart';
import 'package:ultra_menu/data/theme_service.dart';
import 'package:ultra_menu/screen/home/home_screen.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeService.isLightTheme() ? ThemeMode.light : ThemeMode.dark,
      darkTheme: ThemeService().darkMode,
      debugShowCheckedModeBanner: false,
      theme: ThemeService().lightTheme,
      locale: LocalizationsManager.locale,
      translations: LocalizationsManager.translations,
      fallbackLocale: LocalizationsManager.fallbackLocale,
      defaultTransition: LocalizationsManager.defaultTransition,
      supportedLocales: LocalizationsManager.supportedLocales,
      localizationsDelegates: LocalizationsManager.localizationsDelegates,
      home: const HomeScreen(),
    );
  }
}
