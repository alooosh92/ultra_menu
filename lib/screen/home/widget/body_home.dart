import 'package:flutter/material.dart';
import 'package:ultra_menu/controllers/homr_controller.dart';
import 'package:ultra_menu/data/colors.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height - 308,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent:
                  (MediaQuery.sizeOf(context).height - 308) / 2 - 20),
          itemBuilder: (context, index) => const InkWell(
            onTap: HomrController.cardPress,
            child: Card(
              color: ColorsManager.white,
              elevation: 10,
            ),
          ),
        ),
      ),
    );
  }
}
