import 'package:air_pay/extensions.dart';
import 'package:air_pay/formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../variables/colorpalette.dart';
import '../../../widgets/custom.dart';
import '../../shop/komponen/Component.dart';
class selectNominalScan extends StatelessWidget {
  const selectNominalScan ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: "Top Up",
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
        color: darkcolor['background'],
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: darkcolor['main'],
                borderRadius: BorderRadius.circular(5)),
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: [
                Text(
                  formatNominal(nominal: 500000),
                  style:
                  TextStyle(fontSize: 32, color: darkcolor['contrastmain']),
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(color: darkcolor['contrastmain']),
                )
              ].withSpaceBetween(height: 5),
            ),
          ),
          judulPage(title: "Enter TopUp Nominal"),
          myTextField(
            hintText: "Rp.100.000",
            hintColor: darkcolor['main'],
          ),
          SizedBox(height: 10,),
          myButton(
            onClick: () {},
            text: "Top Up",
            textAlign: TextAlign.center,
            foregroundColor: darkcolor['contrastmain'],
            backgroundColor: darkcolor['main'],
          )
        ]),
      ),
    );
  }
}

