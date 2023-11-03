import 'package:flutter/material.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/extensions.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Rugen",
                  color: darkcolor["contrast"],
                  fontSize: 32),
            ),
            const SizedBox(height: 20),
            const myTextField(hintText: "Username"),
            const myTextField(hintText: "Email / Phone Number"),
            const myTextField(
              hintText: "Password",
              isObscured: true,
            ),
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}

class myTextField extends StatelessWidget {
  const myTextField({
    super.key,
    this.isObscured = false,
    this.hintText,
  });

  final bool isObscured;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    RxBool isChecked = false.obs;
    return TextField(
      autofocus: false,
      controller: TextEditingController(),
      style: TextStyle(color: darkcolor['contrast']),
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: darkcolor["carddark"],
        filled: true,
        hintStyle: TextStyle(
            color: darkcolor['disabled'], fontWeight: FontWeight.normal),
        suffixIcon: isObscured
            ? Obx(() => IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    isChecked == false
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    isChecked == false
                        ? isChecked = true.obs
                        : isChecked = false.obs;
                  },
                ))
            : null,
        contentPadding: const EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: darkcolor['main'], width: 0.5),
        ),
      ),
    );
  }
}
