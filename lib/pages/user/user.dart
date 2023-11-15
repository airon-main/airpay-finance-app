import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:air_pay/extensions.dart';
import 'package:get/get.dart';
import '../shop/komponen/Component.dart';

class homeUserPage extends StatelessWidget {
  const homeUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const myAppBar(
          title: "Appereance",
          // borderColor: Colors.transparent, //* menghilangkan border bottom
          //* Penggunaan jika ada tombol back, masukkan ke gesture detector kalau mau ada logic get.back
          // prefixWidget: GestureDetector(
          //   onTap: () {
          //     Get.back();
          //   },
          //   child: Container(
          //     padding: const EdgeInsets.only(right: 10),
          //     width: 34,
          //     height: 34,
          //     child: Icon(
          //       Icons.arrow_back,
          //       color: darkcolor['contrast'],
          //       size: 22,
          //     ),
          //   ),
          // ),
        ),
        body: Container(
          height: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: darkcolor['background']),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/Frame 93.png",
                        fit: BoxFit.cover,
                        height: 75,
                        width: 75,
                      ),
                    ),
                    Text(
                      "Altan Assyfa Naura Putra",
                      style: TextStyle(
                          color: darkcolor['contrast'],
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "altantheprodigy@gmail.com",
                      style: TextStyle(
                          color: darkcolor['disabled'],
                          fontWeight: FontWeight.normal),
                    )
                  ].withSpaceBetween(height: 5),
                ),
              ),
              myButton(
                onClick: () {
                  Get.toNamed("/user/account");
                },
                text: "Account Information",
                backgroundColor: darkcolor['card'],
                foregroundColor: darkcolor['disabled'],
                prefixIcon: Icons.person,
                suffixIcon: Icons.arrow_forward_rounded,
              ),
              myButton(
                onClick: () {
                  Get.toNamed("/user/appearance");
                },
                text: "Apperance",
                backgroundColor: darkcolor['card'],
                foregroundColor: darkcolor['disabled'],
                prefixIcon: Icons.edit_rounded,
                suffixIcon: Icons.arrow_forward_rounded,
              ),
              myButton(
                onClick: () {
                  Get.toNamed("/user/setting");
                },
                text: "Settings",
                backgroundColor: darkcolor['card'],
                foregroundColor: darkcolor['disabled'],
                prefixIcon: Icons.settings_rounded,
                suffixIcon: Icons.arrow_forward_rounded,
              ),
              myButton(
                onClick: () {
                  Get.toNamed("/user/cache");
                },
                text: "Cache",
                backgroundColor: darkcolor['card'],
                foregroundColor: darkcolor['disabled'],
                prefixIcon: Icons.edit_rounded,
                suffixIcon: Icons.arrow_forward_rounded,
              ),
              myButton(
                onClick: () {
                  Get.toNamed("/user/about");
                },
                text: "About Us",
                backgroundColor: darkcolor['card'],
                foregroundColor: darkcolor['disabled'],
                prefixIcon: Icons.info_outline_rounded,
                suffixIcon: Icons.arrow_forward_rounded,
              ),
              const myDropdown(
                label: "Language",
                labelWidth: 100,
              ),
            ].withSpaceBetween(height: 10),
          ),
        ));
  }
}
