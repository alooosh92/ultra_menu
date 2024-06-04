import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ultra_menu/data/colors.dart';

class NotificationController {
  static Icon getIconBytype(String type) {
    switch (type) {
      case "Discount":
        {
          return const Icon(
            FontAwesomeIcons.moneyBill1Wave,
            color: ColorsManager.green,
            size: 30,
          );
        }
      case "AcceptOrder":
        {
          return const Icon(
            Icons.check_circle,
            color: ColorsManager.normalGreen,
            size: 30,
          );
        }
      case "CancelOrder":
        {
          return const Icon(
            Icons.cancel_rounded,
            color: ColorsManager.red,
            size: 30,
          );
        }
      case "AccontInfo":
        {
          return const Icon(
            Icons.person,
            size: 30,
          );
        }
      case "CreditCard":
        {
          return const Icon(
            Icons.credit_card,
            color: ColorsManager.orange,
            size: 30,
          );
        }
      default:
        {
          return const Icon(
            FontAwesomeIcons.message,
            color: ColorsManager.purple,
            size: 30,
          );
        }
    }
  }

  static List getMessagingList() {
    var list = [
      {
        "text": "30% Special Discount!",
        "description": "Special promotion only valid today",
        "type": "Discount",
        "date": DateTime.now()
      },
      {
        "text": "35% Special Discount!",
        "description": "Special promotion only valid today",
        "type": "Discount",
        "date": DateTime.now().add(const Duration(days: -1))
      },
      {
        "text": "Account Setup Successfull!",
        "description": "Special promotion only valid today",
        "type": "AccontInfo",
        "date": DateTime.now().add(const Duration(days: -1))
      },
      {
        "text": "Special Offer! 60% Off",
        "description": "Special offer for new account, valid until 20 Nov 2022",
        "type": "DiscountEnd",
        "date": DateTime.now().add(const Duration(days: -1))
      },
      {
        "text": "Credit Card Connected",
        "description": "Special promotion only valid today",
        "type": "CreditCard",
        "date": DateTime.now().add(const Duration(days: -2))
      },
      {
        "text": "Your Order Has Been Taken by the Driver",
        "description": "Recentyl",
        "type": "AcceptOrder",
        "date": DateTime.now().add(const Duration(days: -7))
      },
      {
        "text": "Your Order Has Been Canceled",
        "description": "19 Jun 2024",
        "type": "CancelOrder",
        "date": DateTime.now().add(const Duration(days: -30))
      },
    ];
    return list;
  }
}
