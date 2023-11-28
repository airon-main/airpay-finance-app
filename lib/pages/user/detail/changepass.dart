import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePassPage extends StatelessWidget {
  const ChangePassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: "Change Password",
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
            const myTextField(
              labelText: "Old Password",
            ),
            const myTextField(
              labelText: "New Password",
            ),
            const myTextField(
              labelText: "Re-enter New Password",
            ),
            myButton(
              onClick: () {},
              text: "Change Password",
              textAlign: TextAlign.center,
              backgroundColor: darkcolor['main'],
              foregroundColor: darkcolor['contrastmain'],
            ),
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
