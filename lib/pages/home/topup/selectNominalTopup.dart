import 'package:air_pay/extensions.dart';
import 'package:air_pay/pages/card/cardPageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../variables/colorpalette.dart';
import '../../../widgets/custom.dart';

class selectNominalTopup extends StatelessWidget {
  const selectNominalTopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController topUpNominalCtr = TextEditingController();
    CardPageController cardPageController = CardPageController();

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
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const MySelectedCard(),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Enter Top Up Nominal",
                      style: TextStyle(
                          fontSize: 14, color: darkcolor['contrast'])),
                ],
              ),
              myTextField(
                controller: topUpNominalCtr,
                keyboardType: TextInputType.number,
                hintText: "100000",
                hintColor: darkcolor['main'],
              ),
              myButton(
                onClick: () {
                  cardPageController.increaseNominalSelected(
                      nominal: double.parse(topUpNominalCtr.text));
                },
                text: "Top Up",
                textAlign: TextAlign.center,
                foregroundColor: darkcolor['contrastmain'],
                backgroundColor: darkcolor['main'],
              )
            ].withSpaceBetween(height: 10)),
      ),

    );
  }
}
