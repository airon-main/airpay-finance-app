import 'package:air_pay/hive/controllers/AccountController.dart';
import 'package:air_pay/boxes.dart';
import 'package:air_pay/extensions.dart';
import 'package:air_pay/hive/user.dart';
import 'package:air_pay/pages/pin/pinController.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class EnterPin extends StatelessWidget {
  const EnterPin({super.key});

  @override
  Widget build(BuildContext context) {
    var arguments = Get.arguments;

    var pinInputController = TextEditingController();
    PinController pinController = PinController();

    final defaultPinTheme = PinTheme(
      height: 56,
      width: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: darkcolor['contrast'],
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
          border: Border.all(color: darkcolor['disabled']),
          borderRadius: BorderRadius.circular(5),
          color: darkcolor['card']),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: darkcolor['main']),
    );

    print(arguments);

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
              "Enter Pin",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Rugen",
                  color: darkcolor["contrast"],
                  fontSize: 32),
            ),
            const SizedBox(height: 20, width: double.infinity),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              controller: pinInputController,
              length: 6,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            const SizedBox(height: 20, width: double.infinity),
            myButton(
              onClick: () {
                pinController.checkIsTrue(
                  type: arguments['type'],
                  pin: pinInputController.text,
                  username: arguments['username'],
                  email: arguments['email'],
                  password: arguments['password'],
                );
              },
              text: arguments["type"] == "signup"
                  ? "Looks good"
                  : "I think it's Correct",
              backgroundColor: darkcolor['main'],
              foregroundColor: darkcolor['contrastmain'],
              textAlign: TextAlign.center,
            ),
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
