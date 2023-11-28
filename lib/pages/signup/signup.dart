import 'package:air_pay/hive/controllers/AccountController.dart';
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
    AccountController accountController = Get.put(AccountController());
    var usernameTextController = TextEditingController(text: "");
    var emailTextController = TextEditingController(text: "");
    var passwordTextController = TextEditingController(text: "");
    var reenterPasswordTextController = TextEditingController(text: "");
    final formKey = GlobalKey<FormState>();
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
                labelText: "Username",
                controller: usernameTextController,
                validator: (String? value) {
                  String nonNullValue = value ?? "";
                  nonNullValue.trim().isEmpty ? "a Username is Required" : null;
                  return null;
                },
              ),
              myTextField(
                labelText: "Email",
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
                labelText: "Password",
                isObscured: true,
                controller: passwordTextController,
                validator: (String? value) {
                  String nonNullValue = value ?? "";
                  nonNullValue.trim().isEmpty ? "a Password is Required" : null;
                  return null;
                },
              ),
              myTextField(
                labelText: "Re-enter Password",
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
                  accountController.signupChecker(
                    username: usernameTextController.text,
                    email: emailTextController.text,
                    password: passwordTextController.text,
                    reenterPassword: reenterPasswordTextController.text,
                  );
                },
                text: "Signup",
                backgroundColor: darkcolor['main'],
                foregroundColor: darkcolor['contrastmain'],
                textAlign: TextAlign.center,
              ),
              myButton(
                onClick: () {
                  // accountController.signupChecker(
                  //   username: usernameTextController.text,
                  //   email: emailTextController.text,
                  //   password: passwordTextController.text,
                  //   reenterPassword: reenterPasswordTextController.text,
                  // );
                },
                text: "Google Signin",
                backgroundColor: darkcolor['card'],
                foregroundColor: darkcolor['contrast'],
                textAlign: TextAlign.center,
              ),
            ].withSpaceBetween(height: 10),
          ),
        ),
      ),
    );
  }
}
