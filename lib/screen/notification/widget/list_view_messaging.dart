import 'package:flutter/material.dart';
import 'package:ultra_menu/controllers/notification_controller.dart';
import 'package:ultra_menu/data/font.dart';

class ListViewMessaging extends StatelessWidget {
  const ListViewMessaging({
    super.key,
    required this.item,
  });
  final List item;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NotificationController.getIconBytype(item[index]["type"]),
              SizedBox(
                width: MediaQuery.sizeOf(context).width - 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item[index]["text"],
                      style: FontManager.s16w500cB,
                      overflow: TextOverflow.fade,
                    ),
                    Text(
                      item[index]["description"],
                      style: FontManager.s14w400cDg,
                      overflow: TextOverflow.fade,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
