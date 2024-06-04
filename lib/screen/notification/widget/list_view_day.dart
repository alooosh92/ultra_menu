import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/controllers/notification_controller.dart';
import 'package:ultra_menu/screen/notification/widget/list_view_messaging.dart';

class ListViewDay extends StatelessWidget {
  const ListViewDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var grope = groupBy(NotificationController.getMessagingList(),
        (obj) => obj['date'].toString().substring(0, 10));
    List<String> day = [];
    List<dynamic> item = [];
    grope.forEach(
      (key, value) {
        item.add(value);
        if (DateTime.now().difference(DateTime.parse(key)).inDays == 0) {
          day.add("today".tr);
        } else if (DateTime.now().difference(DateTime.parse(key)).inDays == 1) {
          day.add("yesterday".tr);
        } else {
          day.add(key);
        }
      },
    );
    return ListView.builder(
      itemCount: day.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text(day[index])],
              ),
            ),
            ListViewMessaging(item: item[index]),
            const Divider()
          ],
        );
      },
    );
  }
}
