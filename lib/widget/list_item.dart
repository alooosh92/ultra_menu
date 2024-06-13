import 'package:flutter/material.dart';
import 'package:ultra_menu/data/colors.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.list,
  });
  final List list;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
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
        });
  }
}
