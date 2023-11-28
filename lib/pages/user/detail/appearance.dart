import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:air_pay/widgets/customController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Appearance extends StatelessWidget {
  const Appearance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mySwitchController lightThemeController = Get.put(mySwitchController());
    mySwitchController outlineIconController = Get.put(mySwitchController());
    return Scaffold(
      appBar: myAppBar(
        title: "Appereance",
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Themes",
              style: TextStyle(color: darkcolor['contrast']),
            ),
            mySwitch(
              label: "Light Theme",
              controller: lightThemeController,
            ),
            const myTextField(
              // hintText: "#f2c318",
              labelText: "Custom Color",
            ),
            const myDropdown(
              hint: "Choose an Icon Theme",
              items: [
                DropdownMenuItem(
                  value: 'Baseline',
                  child: Text("Baseline"),
                ),
                DropdownMenuItem(
                  value: 'Rounded',
                  child: Text("Rounded"),
                ),
                DropdownMenuItem(
                  value: 'Sharp',
                  child: Text("Sharp"),
                ),
              ],
            ),
            mySwitch(
              controller: outlineIconController,
              label: "Outline icon",
            ),
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
