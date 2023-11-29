import 'package:air_pay/extensions.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:air_pay/variables/colorpalette.dart';

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
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: darkcolor['background']),
        child: Column(
          children: [
            myButton(
              onClick: () {},
              text: "Clean 125mb",
              textAlign: TextAlign.center,
              backgroundColor: darkcolor['card'],
              foregroundColor: darkcolor['contrast'],
            ),
            const myDropdown(
              hint: "Max Size",
              items: [
                DropdownMenuItem(
                  value: '128mb',
                  child: Text("128mb"),
                ),
                DropdownMenuItem(
                  value: '256mb',
                  child: Text("256mb"),
                ),
                DropdownMenuItem(
                  value: '512mb',
                  child: Text("512mb"),
                ),
                DropdownMenuItem(
                  value: '1gb',
                  child: Text("1gb"),
                ),
              ],
            )
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
