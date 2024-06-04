import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ultra_menu/controllers/homr_controller.dart';
import 'package:ultra_menu/data/colors.dart';

class FloatingActionButtonHome extends StatelessWidget {
  const FloatingActionButtonHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
      onPressed: HomrController.flottingButton,
      backgroundColor: ColorsManager.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
              topLeft: Radius.circular(50))),
      child: Icon(
        FontAwesomeIcons.cartShopping,
        color: ColorsManager.white,
      ),
    );
  }
}
