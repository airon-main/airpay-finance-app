import 'package:air_pay/boxes.dart';
import 'package:air_pay/hive/user.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class AccountController extends GetxController {
  var error = "";

  Future<void> logout() async {
    Get.defaultDialog(
      title: "Warning",
      middleText: "Are you sure you want to logout?, tap outside to cancel",
      backgroundColor: darkcolor['main'],
      titleStyle: TextStyle(color: darkcolor['contrastmain']),
      middleTextStyle: TextStyle(color: darkcolor['contrastmain']),
      radius: 5,
      actions: [
        GestureDetector(
            onTap: () {
              boxUser.delete("myUser");
              boxCard.delete("myCards");
              Get.offAllNamed("/signup");
            },
            child: Text(
              "Yes, I want to logout",
              style: TextStyle(color: darkcolor['red']),
            )),
      ],
    );
  }

  Future<void> signup({
    required String username,
    required String email,
    required String password,
    required String pin,
  }) async {
    if (!pin.length.isLowerThan(6)) {
      User user = User(
        username: username,
        email: email,
        password: password,
        pin: pin,
        image: "assets/images/User.png",
        airpayId: 'id_$username',
        selectedCard: 0,
      );
      boxUser.put('myUser', user);
      Get.offAllNamed("/home", arguments: "signup");
    } else {
      Get.defaultDialog(
        title: "Careful",
        middleText: "You must enter the pin",
        backgroundColor: darkcolor['main'],
        titleStyle: TextStyle(color: darkcolor['contrastmain']),
        middleTextStyle: TextStyle(color: darkcolor['contrastmain']),
        radius: 5,
      );
    }
  }

  Future<void> signupChecker({
    required String username,
    required String email,
    required String password,
    required String reenterPassword,
  }) async {
    error = "";
    if (![username, email, password, reenterPassword].contains("")) {
      if (password == reenterPassword) {
        Get.toNamed("/enterpin", arguments: {
          "type": "signup",
          "username": username,
          "email": email,
          "password": password,
          "reenterpassword": reenterPassword,
        });
      } else {
        Get.defaultDialog(
          title: "Whoops",
          middleText:
              "Check your password again.\nYou must reenter the same password",
          backgroundColor: darkcolor['main'],
          titleStyle: TextStyle(color: darkcolor['contrastmain']),
          middleTextStyle: TextStyle(color: darkcolor['contrastmain']),
          radius: 5,
        );
      }
    } else {
      Get.defaultDialog(
          title: "Whoa slow down there",
          middleText: "You sure you filled every field?\nCheck 'em again",
          backgroundColor: darkcolor['main'],
          titleStyle: TextStyle(color: darkcolor['contrastmain']),
          middleTextStyle: TextStyle(color: darkcolor['contrastmain']),
          radius: 5);
    }
  }

  Future<void> edit({
    required String username,
    required String email,
  }) async {
    final user = boxUser.get("myUser") as User;
    User newUser = User(
      username: username,
      email: email,
      password: user.password,
      pin: user.pin,
      image: "assets/images/User.png",
      airpayId: 'id_$username',
      selectedCard: user.selectedCard,
    );
    boxUser.put('myUser', newUser);
    Get.offAllNamed("/home");
  }
}
