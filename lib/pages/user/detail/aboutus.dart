import 'package:air_pay/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';

class aboutUsPage extends StatelessWidget {
  const aboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: "About Us",
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Image.asset("assets/images/airpay.png"),
                  Text(
                    "AirPay Finance App ©",
                    style: TextStyle(color: darkcolor['contrast']),
                  ),
                  Text(
                    "2023-now",
                    style:
                        TextStyle(color: darkcolor['disabled'], fontSize: 10),
                  )
                ].withSpaceBetween(height: 5),
              ),
            ),
            Text(
              "People",
              style: TextStyle(color: darkcolor['disabled']),
            ),
            const rowAboutUs(
                text: "Aaron",
                text1: "Ikhwan Saputra",
                text2: "Designer & Coder"),
            const rowAboutUs(
                text: "Altan", text1: "Assyfa Naura Putra", text2: "Coder"),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Our Other Apps",
              style: TextStyle(color: darkcolor['disabled']),
            ),
            Center(
              child: Text(
                "Not yet, This is our first App :)",
                style: TextStyle(color: darkcolor['contrast']),
              ),
            )
          ].withSpaceBetween(height: 10, width: 10),
        ),
      ),
    );
  }
}

class rowAboutUs extends StatelessWidget {
  const rowAboutUs(
      {Key? key, required this.text, required this.text1, required this.text2})
      : super(key: key);
  final String text;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              text,
              style: TextStyle(color: darkcolor['contrast']),
            ),
            Text(
              text1,
              style: TextStyle(color: darkcolor['disabled']),
            ),
          ].withSpaceBetween(width: 5),
        ),
        Text(
          text2,
          style: TextStyle(color: darkcolor['contrast']),
        )
      ],
    );
  }
}
