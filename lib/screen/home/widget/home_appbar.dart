import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ultra_menu/controllers/homr_controller.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/font.dart';

AppBar homeAppbar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) =>
    AppBar(
      title: Text(
        HomrController.getName(),
        style: FontManager.s20w700cB,
      ),
      leading: IconButton(
          onPressed: () => HomrController.drowerButton(scaffoldKey),
          icon: const Icon(FontAwesomeIcons.bars)),
      actions: [
        IconButton(
          onPressed: HomrController.toAlertMessaging,
          icon: Stack(
            children: [
              const Icon(
                FontAwesomeIcons.solidBell,
                color: ColorsManager.primary,
              ),
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                    color: ColorsManager.red,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ],
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size(MediaQuery.sizeOf(context).width, 170),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("OYFF".tr, style: FontManager.s16w500cB),
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
                        backgroundColor:
                            WidgetStatePropertyAll(ColorsManager.white),
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
                SizedBox(
                  width: MediaQuery.sizeOf(context).width - 40,
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: HomrController.listCategory().length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () => HomrController.categoryChange(index),
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: index != 0
                                    ? null
                                    : const [
                                        BoxShadow(
                                          blurRadius: 5,
                                          color: ColorsManager.darkGray,
                                          offset: Offset(2, 2),
                                        ),
                                      ],
                                color: index == 0
                                    ? ColorsManager.primary
                                    : ColorsManager.blueGray,
                              ),
                              child: Center(
                                  child: Text(
                                HomrController.listCategory()[index],
                                style: index == 0
                                    ? FontManager.s16w700cW
                                    : FontManager.s16w700cB,
                              )),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
