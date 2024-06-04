import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/screen/notification/widget/list_view_day.dart';
import 'package:ultra_menu/widget/app_bar_def.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDef("notification".tr, elevation: 0),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: const ListViewDay(),
      ),
    );
  }
}
