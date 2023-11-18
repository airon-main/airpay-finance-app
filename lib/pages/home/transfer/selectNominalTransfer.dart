import 'package:air_pay/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../variables/colorpalette.dart';
import '../../../widgets/custom.dart';
import '../../shop/komponen/Component.dart';

class selectNominalTransfer extends StatelessWidget {
  const selectNominalTransfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nominalFormat = MoneyMaskedTextController(
        thousandSeparator: ",",
        leftSymbol: "Rp",
        precision: 0,
        decimalSeparator: "");
    nominalFormat.updateValue(500000);
    return Scaffold(
      appBar: myAppBar(
        title: "Transfer",
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
                  nominalFormat.text,
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
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
                color: darkcolor['carddark'],
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/User.png'),
                  radius: 19,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BNI (Ayah)",
                        style: TextStyle(color: darkcolor['contrast']),
                      ),
                      Text(
                        "123 456 789",
                        style: TextStyle(color: darkcolor['disabled']),
                      ),
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      "Change",
                      style: TextStyle(color: darkcolor['main']),
                    ))
              ].withSpaceBetween(width: 10),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Enter Transfer Nominal",
                  style: TextStyle(fontSize: 14, color: darkcolor['contrast'])),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "",
                  style: TextStyle(fontSize: 10, color: darkcolor['disabled']),
                ),
              ),
            ],
          ),
          myTextField(
            hintText: "Rp.100.000",
            hintColor: darkcolor['main'],
          ),
          myButton(
            onClick: () {},
            text: "Transfer",
            textAlign: TextAlign.center,
            foregroundColor: darkcolor['contrastmain'],
            backgroundColor: darkcolor['main'],
          )
        ].withSpaceBetween(height: 10)),
      ),
    );
  }
}
