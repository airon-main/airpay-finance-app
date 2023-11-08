import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void intialDelayed(BuildContext context) async {
    Get.offNamed("/signup");
  }

  @override
  Widget build(BuildContext context) {  
    Future.delayed(const Duration(seconds: 3), () {
      intialDelayed(context);
    });
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
