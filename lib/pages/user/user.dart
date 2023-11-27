import 'package:air_pay/boxes.dart';
import 'package:air_pay/hive/controllers/AccountController.dart';
import 'package:air_pay/hive/user.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:air_pay/extensions.dart';
import 'package:get/get.dart';

class homeUserPage extends StatelessWidget {
  homeUserPage({Key? key}) : super(key: key);

  final user = boxUser.get("myUser") as User;

  @override
  Widget build(BuildContext context) {
    AccountController accountController = AccountController();
    return Scaffold(
      appBar: const myAppBar(
        title: "Account",
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: darkcolor['background']),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      user.image,
                      fit: BoxFit.cover,
                      height: 75,
                      width: 75,
                    ),
                  ),
                  Text(
                    user.username,
                    style: TextStyle(
                        color: darkcolor['contrast'],
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    user.email,
                    style: TextStyle(
                        color: darkcolor['disabled'],
                        fontWeight: FontWeight.normal),
                  )
                ].withSpaceBetween(height: 5),
              ),
            ),
            myButton(
              onClick: () {
                Get.toNamed("/user/account");
              },
              text: "Account Information",
              backgroundColor: darkcolor['card'],
              foregroundColor: darkcolor['contrast'],
              prefixIcon: Icons.person,
              suffixIcon: Icons.arrow_forward_rounded,
            ),
            myButton(
              onClick: () {
                Get.toNamed("/user/appearance");
              },
              text: "Apperance",
              backgroundColor: darkcolor['card'],
              foregroundColor: darkcolor['contrast'],
              prefixIcon: Icons.edit_rounded,
              suffixIcon: Icons.arrow_forward_rounded,
            ),
            myButton(
              onClick: () {
                Get.toNamed("/user/setting");
              },
              text: "Settings",
              backgroundColor: darkcolor['card'],
              foregroundColor: darkcolor['contrast'],
              prefixIcon: Icons.settings_rounded,
              suffixIcon: Icons.arrow_forward_rounded,
            ),
            myButton(
              onClick: () {
                Get.toNamed("/user/cache");
              },
              text: "Cache",
              backgroundColor: darkcolor['card'],
              foregroundColor: darkcolor['contrast'],
              prefixIcon: Icons.edit_rounded,
              suffixIcon: Icons.arrow_forward_rounded,
            ),
            myButton(
              onClick: () {
                Get.toNamed("/user/about");
              },
              text: "About Us",
              backgroundColor: darkcolor['card'],
              foregroundColor: darkcolor['contrast'],
              prefixIcon: Icons.info_outline_rounded,
              suffixIcon: Icons.arrow_forward_rounded,
            ),
            myButton(
              onClick: () {
                accountController.logout();
                boxCard.delete("boxCards");
              },
              text: "Logout",
              backgroundColor: darkcolor['card'],
              foregroundColor: darkcolor['red'],
              prefixIcon: Icons.warning_rounded,
              suffixIcon: Icons.arrow_forward_rounded,
            ),
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
