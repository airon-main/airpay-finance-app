import 'package:air_pay/pages/card/cardPageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../variables/colorpalette.dart';
import '../../../widgets/custom.dart';
import '../../shop/komponen/Component.dart';

class selectNominalScan extends StatelessWidget {
  const selectNominalScan({Key? key}) : super(key: key);

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
          const MySelectedCard(),
          judulPage(title: "Enter TopUp Nominal"),
          myTextField(
            labelText: "Nominal",
            hintColor: darkcolor['main'],
          ),
          SizedBox(
            height: 10,
          ),
          myButton(
            onClick: () {
            },
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
