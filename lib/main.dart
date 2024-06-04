import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/data/locale-master/localizations_manager.dart';
import 'package:ultra_menu/screen/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Lato"),
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
