import 'package:air_pay/extensions.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:air_pay/widgets/customController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:air_pay/variables/colorpalette.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mySwitchController showUnavailableSwitchController = mySwitchController();
    return Scaffold(
      appBar: myAppBar(
        title: "Settings",
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
            const myDropdown(
              hint: "Language",
              items: [
                DropdownMenuItem(
                  value: 'English',
                  child: Text("English"),
                ),
                DropdownMenuItem(
                  value: 'Malaysia',
                  child: Text("Malaysia"),
                ),
                DropdownMenuItem(
                  value: 'Indonesia',
                  child: Text("Indonesia"),
                ),
              ],
            ),
            mySwitch(
              label: "Show unavailable Features",
              controller: showUnavailableSwitchController,
            )
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
