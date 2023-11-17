import 'package:air_pay/pages/signup/signupController.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/extensions.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    var usernameTextController = TextEditingController(text: "");
    var emailTextController = TextEditingController(text: "");
    var passwordTextController = TextEditingController(text: "");
    var reenterPasswordTextController = TextEditingController(text: "");
    final formKey = GlobalKey<FormState>();
    SignupController controller = SignupController();
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        color: darkcolor["background"],
        child: SingleChildScrollView(
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
              myTextField(
                hintText: "Username",
                controller: usernameTextController,
                validator: (String? value) {
                  String nonNullValue = value ?? "";
                  nonNullValue.trim().isEmpty ? "a Username is Required" : null;
                  return null;
                },
              ),
              myTextField(
                hintText: "Email",
                controller: emailTextController,
                validator: (String? value) {
                  String nonNullValue = value ?? "";
                  EmailValidator.validate(nonNullValue)
                      ? null
                      : "Please enter a valid email";
                  return null;
                },
              ),
              myTextField(
                hintText: "Password",
                isObscured: true,
                controller: passwordTextController,
                validator: (String? value) {
                  String nonNullValue = value ?? "";
                  nonNullValue.trim().isEmpty ? "a Password is Required" : null;
                  return null;
                },
              ),
              myTextField(
                hintText: "Re-enter Password",
                isObscured: true,
                controller: reenterPasswordTextController,
                validator: (String? value) {
                  String nonNullValue = value ?? "";
                  nonNullValue.trim().isEmpty
                      ? "please Re-enter your Password"
                      : null;
                  return null;
                },
              ),
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
                  if ([
                    usernameTextController.text,
                    emailTextController.text,
                    passwordTextController.text,
                    reenterPasswordTextController.text,
                  ].contains("")) {
                    Get.defaultDialog(
                        title: "Whoa slow down there",
                        middleText:
                            "You sure you filled every field?\nCheck 'em again",
                        backgroundColor: darkcolor['main'],
                        titleStyle: TextStyle(color: darkcolor['contrastmain']),
                        middleTextStyle:
                            TextStyle(color: darkcolor['contrastmain']),
                        radius: 5);
                  } else {
                    Get.toNamed("/enterpin", arguments: {
                      "type": "signup",
                      "username": usernameTextController.text,
                      "email": emailTextController.text,
                      "password": passwordTextController.text,
                      "reenterpassword": reenterPasswordTextController.text,
                    });
                  }
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
      ),
    );
  }
}
