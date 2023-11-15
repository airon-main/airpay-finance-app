import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shop/komponen/Component.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: "Account Information",
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
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.center,
              child: Container(
                height: 75,
                width: 75,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/Frame 93.png"),
                  fit: BoxFit.cover,
                )),
                child: const Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            const myTextField(
              label: "Username",
              labelWidth: 90,
              hintText: "altantheprodigy",
            ),
            const myTextField(
              label: "Full Name",
              labelWidth: 90,
              hintText: "Altan Assyfa Naura Putra",
            ),
            const myTextField(
              label: "Email",
              labelWidth: 90,
              hintText: "altantheprodigy@gmail.com",
            ),
            myButton(
              label: "Password",
              labelWidth: 90,
              text: "Change Password",
              onClick: () {},
              textAlign: TextAlign.center,
              backgroundColor: darkcolor['card'],
              foregroundColor: darkcolor['contrast'],
            ),
            const myTextField(
              label: "AirPay ID",
              labelWidth: 90,
              hintText: "1a2B3c4D5e6F7g8",
            ),
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
