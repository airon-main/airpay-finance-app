import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:air_pay/variables/colorpalette.dart';

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
    RxBool isChecked = true.obs;
    return Obx(() => TextField(
          autofocus: false,
          controller: TextEditingController(),
          style: TextStyle(color: darkcolor['contrast']),
          obscureText: isObscured ? isChecked.value : isObscured,
          decoration: InputDecoration(
            hintText: hintText,
            fillColor: darkcolor["carddark"],
            filled: true,
            hintStyle: TextStyle(
                color: darkcolor['disabled'], fontWeight: FontWeight.normal),
            suffixIcon: isObscured
                ? IconButton(
                    icon: Obx(() {
                      return isChecked.isTrue
                          ? Icon(Icons.visibility, color: darkcolor['disabled'])
                          : Icon(Icons.visibility_off,
                              color: darkcolor['disabled']);
                    }),
                    onPressed: () {
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
        ));
  }
}
