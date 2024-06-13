import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ultra_menu/controllers/homr_controller.dart';
import 'package:ultra_menu/data/colors.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 15,
                    color: ColorsManager.gray,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              width: MediaQuery.sizeOf(context).width - 100,
              child: const SearchBar(
                backgroundColor: WidgetStatePropertyAll(ColorsManager.white),
                elevation: WidgetStatePropertyAll(1),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: ColorsManager.primary,
                  borderRadius: BorderRadius.circular(20)),
              child: const IconButton(
                onPressed: HomrController.toAlertMessaging,
                icon: Icon(
                  FontAwesomeIcons.barsStaggered,
                  color: ColorsManager.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
