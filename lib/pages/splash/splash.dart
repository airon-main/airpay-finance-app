import 'package:air_pay/pages/splash/splashController.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = SplashController();
    splashController.checkIsLoggedIn();

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: darkcolor['main'],
      child: Center(
        child: Image.asset(
          "assets/images/splashgif.gif",
          height: 160,
          width: 160,
        ),
      ),
    );
  }
}
