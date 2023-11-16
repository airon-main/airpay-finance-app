import 'package:flutter/material.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/extensions.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        color: darkcolor["background"],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Signup",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Rugen",
                  color: darkcolor["contrast"],
                  fontSize: 32),
            ),
            const SizedBox(height: 20),
            const myTextField(
              hintText: "Username",
            ),
            const myTextField(hintText: "Email / Phone Number"),
            const myTextField(hintText: "Password", isObscured: true),
            const myTextField(hintText: "Re-enter Password", isObscured: true),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Terms and Services",
                    style: TextStyle(
                        color: darkcolor['link'],
                        decoration: TextDecoration.underline)),
              ],
            ),
            const SizedBox(height: 20, width: double.infinity),
            myButton(
              onClick: () {
                Get.toNamed("/enterpin", arguments: "signup");
              },
              text: "Signup",
              backgroundColor: darkcolor['main'],
              foregroundColor: darkcolor['contrastmain'],
              textAlign: TextAlign.center,
            ),
            myButton(
              onClick: () {
                Get.offNamed("/login");
              },
              text: "Login",
              backgroundColor: darkcolor['card'],
              foregroundColor: darkcolor['contrast'],
              textAlign: TextAlign.center,
            )
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
