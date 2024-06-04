import 'package:flutter/material.dart';
import 'package:ultra_menu/screen/auth/splash/widget/page_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          PageWidget(
            image: "splash1.png",
            head: "splashHead1",
            body: "splashBody1",
            postion: 0,
            pageController: pageController,
            isLast: false,
          ),
          PageWidget(
            image: "splash2.png",
            head: "splashHead2",
            body: "splashBody2",
            postion: 1,
            pageController: pageController,
            isLast: false,
          ),
          PageWidget(
            image: "splash3.png",
            head: "splashHead3",
            body: "splashBody3",
            postion: 2,
            pageController: pageController,
            isLast: true,
          ),
        ],
      ),
    );
  }
}
