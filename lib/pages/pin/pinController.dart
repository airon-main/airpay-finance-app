import 'package:air_pay/boxes.dart';
import 'package:air_pay/hive/controllers/AccountController.dart';
import 'package:air_pay/formatter.dart';
import 'package:air_pay/hive/user.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PinController extends GetxController {
  Future<void> checkIsTrue({
    required String type,
    required String pin,
    String? username,
    String? email,
    String? password,
  }) async {
    AccountController accountController = AccountController();
    print(pin);
    if (type == 'signup') {
      String nonNullUsername = username ?? "";
      String nonNullEmail = email ?? "";
      String nonNullPassword = password ?? "";
      accountController.signup(
        username: nonNullUsername,
        email: nonNullEmail,
        password: nonNullPassword,
        pin: pin,
      );
    } else {
      final user = boxUser.get("myUser") as User;
      if (!pin.length.isLowerThan(6)) {
        if (pin == user.pin) {
          Get.offAllNamed("/home");
        } else {
          Get.defaultDialog(
            title: "Must be a Typo",
            middleText: "That's the wrong Pin -_-",
            backgroundColor: darkcolor['main'],
            titleStyle: TextStyle(color: darkcolor['contrastmain']),
            middleTextStyle: TextStyle(color: darkcolor['contrastmain']),
            radius: 5,
          );
        }
      } else {
        Get.defaultDialog(
          title: "Must be a Typo",
          middleText: "Not enough numbers :[",
          backgroundColor: darkcolor['main'],
          titleStyle: TextStyle(color: darkcolor['contrastmain']),
          middleTextStyle: TextStyle(color: darkcolor['contrastmain']),
          radius: 5,
        );
      }
    }
  }
}
