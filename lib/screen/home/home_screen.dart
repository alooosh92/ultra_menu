import 'package:flutter/material.dart';
import 'package:ultra_menu/screen/home/widget/body_home.dart';
import 'package:ultra_menu/screen/home/widget/bottom_home_navigation_bar.dart';
import 'package:ultra_menu/screen/home/widget/drawer_defulte.dart';
import 'package:ultra_menu/screen/home/widget/floating_action_button_home.dart';
import 'package:ultra_menu/screen/home/widget/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      drawer: const DrawerDefulte(),
      appBar: homeAppbar(context, scaffoldKey),
      floatingActionButton: const FloatingActionButtonHome(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomHomeNavigationBar(index: 0),
      body: const BodyHome(),
    );
  }
}
