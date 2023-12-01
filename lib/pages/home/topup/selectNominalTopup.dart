import 'package:air_pay/extensions.dart';
import 'package:air_pay/formatter.dart';
import 'package:air_pay/pages/card/cardPageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';

import '../../../variables/colorpalette.dart';
import '../../../widgets/custom.dart';

class selectNominalTopup extends GetView<CardPageController> {
  const selectNominalTopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController topUpNominalCtr = TextEditingController();

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
                  Text("Enter Top Up Nominal (Rp)",
                      style: TextStyle(
                          fontSize: 14, color: darkcolor['contrast'])),
                ],
              ),
              myTextField(
                inputFormatter: [
                  NumberTextInputFormatter(
                    integerDigits: 10,
                    decimalDigits: 0,
                    maxValue: '1000000000.00',
                    decimalSeparator: ',',
                    groupDigits: 3,
                    groupSeparator: '.',
                    allowNegative: false,
                    overrideDecimalPoint: true,
                    insertDecimalPoint: false,
                    insertDecimalDigits: true,
                  ),
                ],
                controller: topUpNominalCtr,
                keyboardType: TextInputType.number,
                labelText: "Nominal",
                hintColor: darkcolor['main'],
              ),
              myButton(
                onClick: () {
                  topUpNominalCtr.text == ""
                      ? null
                      : controller.increaseNominalSelected(
                          nominal: double.parse(removeNonNumeric(topUpNominalCtr.text)));
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
