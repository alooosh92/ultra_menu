import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/controllers/auth_controller.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/screen/auth/forget_password/widget/row_forget_rest.dart';
import 'package:ultra_menu/screen/auth/widget/elevated_defulte.dart';

class ForgetPasswordType extends StatefulWidget {
  const ForgetPasswordType({
    super.key,
    required this.email,
    required this.phone,
  });
  final String email;
  final String phone;
  @override
  State<ForgetPasswordType> createState() => _ForgetPasswordTypeState();
}

class _ForgetPasswordTypeState extends State<ForgetPasswordType> {
  int _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowForGetRest(
          title: "SIW".tr,
          hint: widget.phone,
          isCheck: _selectedValue == 1,
          iconType: FontAwesomeIcons.squareWhatsapp,
          press: () => setState(() {
            _selectedValue = 1;
          }),
        ),
        RowForGetRest(
          title: "SIE".tr,
          hint: widget.email,
          isCheck: _selectedValue == 2,
          iconType: Icons.email,
          press: () => setState(() {
            _selectedValue = 2;
          }),
        ),
        const SizedBox(height: 20),
        ElevatedDefulte(
            color: ColorsManager.primary,
            widget: Text(
              "continue".tr,
              style: FontManager.s18w700cW,
            ),
            press: () => AuthController.dialogTypeRestPassword(_selectedValue,
                _selectedValue == 1 ? widget.phone : widget.email)),
      ],
    );
  }
}
