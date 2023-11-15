import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:air_pay/pages/shop/komponen/Component.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class buyPage extends StatefulWidget {
  const buyPage({Key? key}) : super(key: key);

  @override
  State<buyPage> createState() => _buyPageState();
}

class _buyPageState extends State<buyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(
          title: "Add Cards",
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
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: darkcolor['background']),
            child: Column(
              children: [
                const judulPage(title: "Enter User ID*", title1: null),
                const myTextField(hintText: "Username"),
                const SizedBox(
                  height: 10,
                ),
                const myTextField(hintText: "Zone ID"),
                const judulPage(title: "Select TopUp Nominal*", title1: null),
                const promoPage(
                    imageAssetPath: "assets/images/Rectangle 55.png",
                    text1: "Mobbile Legends",
                    text2: "999,999 Diamonds",
                    text3: "Rp.10.000",
                    text4: "99%"),
                const TopUpNominal(
                    imageAssetPath: "assets/images/Rectangle 55.png",
                    text1: "Mobbile Legends",
                    text2: "40 Diamonds",
                    text3: "Rp.13.000"),
                const TopUpNominal(
                    imageAssetPath: "assets/images/Rectangle 55.png",
                    text1: "Mobbile Legends",
                    text2: "120 Diamonds",
                    text3: "Rp.50.000"),
                const TopUpNominal(
                    imageAssetPath: "assets/images/Rectangle 55.png",
                    text1: "Mobbile Legends",
                    text2: "500 Diamonds",
                    text3: "Rp.100.000"),
                const TopUpNominal(
                    imageAssetPath: "assets/images/Rectangle 55.png",
                    text1: "Mobbile Legends",
                    text2: "2,000 Diamonds",
                    text3: "Rp.500.000"),
                const judulPage(
                    title: "Email Receipt (Optional)", title1: null),
                const myTextField(hintText: "Email"),
                const judulPage(title: "Confirm Payment", title1: null),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: darkcolor['card'],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(1),
                        child: Row(
                          children: [
                            Text(
                              "Your Total :",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: darkcolor['contrast'],
                                  fontFamily: 'Roboto'),
                            ),
                            Text(
                              "Rp.10,000",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: darkcolor['main'],
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              customElevatedButton(
                                  text: "Cancel",
                                  onPressed: () {
                                    Get.offNamed("/home");
                                  },
                                  backgroundColor: darkcolor['carddark'],
                                  textColor: darkcolor['contrast']),
                              customElevatedButton(
                                  text: "Confirm",
                                  onPressed: () {
                                    Get.offNamed("/home");
                                  },
                                  backgroundColor: darkcolor['main'],
                                  textColor: darkcolor['contrastmain'])
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
