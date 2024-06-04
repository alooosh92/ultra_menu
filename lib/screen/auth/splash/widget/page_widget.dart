import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/controllers/auth_controller.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';
import 'package:ultra_menu/data/values.dart';

class PageWidget extends StatelessWidget {
  const PageWidget(
      {super.key,
      required this.body,
      required this.head,
      required this.image,
      required this.postion,
      required this.isLast,
      required this.pageController});
  final String image;
  final String head;
  final String body;
  final int postion;
  final bool isLast;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          '$imageLocalPath/$image',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 100,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(35),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: ColorsManager.primary,
              ),
              child: Column(
                children: [
                  Text(head.tr, style: FontManager.s32w800cW),
                  Text(body.tr, style: FontManager.s16w400cBr),
                  const SizedBox(height: 20),
                  DotsIndicator(
                    position: postion,
                    dotsCount: 3,
                    decorator: DotsDecorator(
                      activeColor: ColorsManager.white,
                      color: ColorsManager.gray,
                      size: const Size(24, 6),
                      activeSize: const Size(24, 6),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                  const SizedBox(height: 30),
                  isLast
                      ? InkWell(
                          onTap: AuthController.skipSplash,
                          child: Image.asset(
                            '$imageLocalPath/next.png',
                            width: 60,
                            height: 60,
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: AuthController.skipSplash,
                                child: Text(
                                  "skip".tr,
                                  style: FontManager.s18w700cW,
                                )),
                            TextButton(
                              onPressed: () => pageController.animateToPage(
                                  postion + 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.linear),
                              child: Text(
                                "next".tr,
                                style: FontManager.s18w700cW,
                              ),
                            )
                          ],
                        )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
