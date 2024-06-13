import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/values.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            Positioned(
              height: MediaQuery.sizeOf(context).height / 1.8,
              width: MediaQuery.sizeOf(context).width - 16,
              child: const ItemImageScreen(),
            ),
            Positioned(
              bottom: 0,
              height: MediaQuery.sizeOf(context).height / 2,
              width: MediaQuery.sizeOf(context).width - 16,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: ColorsManager.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemImageScreen extends StatelessWidget {
  const ItemImageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage('$imageLocalPath/test.png'))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                padding: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: ColorsManager.white)),
                child: IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.arrow_back_ios,
                      color: Colors.white, size: 20),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: ColorsManager.white)),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border,
                      color: Colors.white, size: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
