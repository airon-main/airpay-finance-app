import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shop/komponen/Component.dart';

class apperancePage extends StatelessWidget {
  const apperancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: "Appereance",
        // borderColor: Colors.transparent, //* menghilangkan border bottom
        //* Penggunaan jika ada tombol back, masukkan ke gesture detector kalau mau ada logic get.back
        prefixWidget: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            padding: const EdgeInsets.only(right: 10),
            width: 34,
            height: 34,
            child: Icon(
              Icons.arrow_back,
              color: darkcolor['contrast'],
              size: 22,
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: darkcolor['background']),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Themes",
              style: TextStyle(color: darkcolor['contrast']),
            ),
            const myTextField(
              hintText: "#f2c318",
              label: "Custom Color",
              labelWidth: 100,
            ),
            myButton(
              onClick: () {},
              label: "Icon Theme",
              labelWidth: 100,
              text: "Baseline",
              suffixIcon: Icons.arrow_drop_down_rounded,
            ),
            const mySwitch(
              label: "Light Theme",
            ),
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
