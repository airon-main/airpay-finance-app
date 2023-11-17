import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class EnterPin extends StatelessWidget {
  const EnterPin({super.key});

  @override
  Widget build(BuildContext context) {
    var argument = Get.arguments;

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

    print(argument);

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
              length: 6,
              validator: argument['type'] == "login"
                  ? (s) {
                      return s == '222222' ? null : 'Pin is incorrect';
                    }
                  : null,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            const SizedBox(height: 20, width: double.infinity),
            myButton(
              onClick: () {
                Get.offAllNamed("/home");
              },
              text: argument['type'] == "signup"
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
