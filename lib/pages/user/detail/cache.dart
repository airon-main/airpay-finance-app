import 'package:air_pay/extensions.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../variables/colorpalette.dart';
import '../../shop/komponen/Component.dart';

class Cache extends StatelessWidget {
  const Cache({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: "Cache",
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
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: darkcolor['background']),
        child: Column(
          children: [
            detailAccInfo(
                childWidget: myButton(
                  text: "Clean   120MB",
                  onClick: () {},
                  textAlign: TextAlign.center,
                  backgroundColor: darkcolor['card'],
                  foregroundColor: darkcolor['contrast'],
                ),
                text: "Cache"),
            dropdownChoices(
                text: "Max Size",
                text1: "128MB",
                icon: Icons.arrow_drop_down_rounded)
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
