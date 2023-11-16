import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../shop/komponen/Component.dart';

class addCardPage extends StatelessWidget {
  const addCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: "Add Cards",
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
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: darkcolor['background']),
        child: Column(
          children: [
            const judulPage(title: "Enter Card Data"),
            const myTextField(
              hintText: "Account Number",
            ),
            myCustomElevatedButton(
                text: "Add Custom Picture",
                onPressed: () {},
                backgroundColor: darkcolor['carddark'],
                textColor: darkcolor['contrast']),
            myCustomElevatedButton(
                text: "Scan",
                onPressed: () {},
                backgroundColor: darkcolor['main'],
                textColor: darkcolor['contrastmain'])
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
