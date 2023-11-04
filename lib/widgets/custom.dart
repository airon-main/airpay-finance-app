import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:air_pay/variables/colorpalette.dart';

class myTextField extends StatefulWidget {
  final bool isObscured;
  final String? hintText;
  final TextEditingController? textEditingController;
  const myTextField({
    super.key,
    this.isObscured = false,
    this.hintText,
    this.textEditingController,
  });

  @override
  myTextFieldState createState() => myTextFieldState();
}

class myTextFieldState extends State<myTextField> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: TextStyle(color: darkcolor['contrast']),
      controller: widget.textEditingController,
      obscureText: widget.isObscured ? isChecked : widget.isObscured,
      decoration: InputDecoration(
        hintText: widget.hintText,
        fillColor: darkcolor["carddark"],
        filled: true,
        hintStyle: TextStyle(
            color: darkcolor['disabled'], fontWeight: FontWeight.normal),
        suffixIcon: widget.isObscured
            ? IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  isChecked ? Icons.visibility : Icons.visibility_off,
                  color: darkcolor['disabled'],
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
              )
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

class myOldTextField extends StatelessWidget {
  const myOldTextField({
    super.key,
    this.isObscured = false,
    this.hintText,
    this.textEditingController,
  });

  final bool isObscured;
  final String? hintText;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    RxBool isChecked = true.obs;
    return TextField(
      autofocus: false,
      style: TextStyle(color: darkcolor['contrast']),
      controller: textEditingController,
      obscureText: isObscured,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: darkcolor["carddark"],
        filled: true,
        hintStyle: TextStyle(
            color: darkcolor['disabled'], fontWeight: FontWeight.normal),
        suffixIcon: isObscured
            ? InkWell(
                child: Icon(
                  isChecked.isTrue ? Icons.visibility : Icons.visibility_off,
                  color: darkcolor['disabled'],
                ),
                onTap: () {
                  isChecked.toggle();
                },
              )
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
