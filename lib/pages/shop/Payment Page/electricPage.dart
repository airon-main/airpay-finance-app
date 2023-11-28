import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:air_pay/pages/shop/komponen/Component.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class electricPage extends StatefulWidget {
  const electricPage({Key? key}) : super(key: key);

  @override
  State<electricPage> createState() => _electricPageState();
}

class _electricPageState extends State<electricPage> {
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
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: darkcolor['card'], width: 1)),
            color: darkcolor['carddark'],
          ),
          child: Column(
            children: [
              const judulPage(title: "Nomor Meter/ID Pelanggan*", title1: null),
              const myTextField(labelText: "Nomor Meter/ID Pelanggan"),
              const judulPage(title: "Select TopUp Nominal*", title1: null),
              const promoPage(
                  imageAssetPath: "assets/images/kelistrikan.png",
                  text1: "Token Listrik",
                  text2: "999,999 Token Listrik",
                  text3: "Rp.10.000",
                  text4: "99%"),
              const TopUpNominal(
                  imageAssetPath: "assets/images/kelistrikan.png",
                  text1: "Token Listrik",
                  text2: "10,000 Token Listrik",
                  text3: "Rp.13.000"),
              const TopUpNominal(
                  imageAssetPath: "assets/images/kelistrikan.png",
                  text1: "Token Listrik",
                  text2: "10,000 Token Listrik",
                  text3: "Rp.13.000"),
              const TopUpNominal(
                  imageAssetPath: "assets/images/kelistrikan.png",
                  text1: "Token Listrik",
                  text2: "10,000 Token Listrik",
                  text3: "Rp.13.000"),
              const TopUpNominal(
                  imageAssetPath: "assets/images/kelistrikan.png",
                  text1: "Token Listrik",
                  text2: "10,000 Token Listrik",
                  text3: "Rp.13.000"),
              const judulPage(title: "Email Receipt (Optional)", title1: null),
              const myTextField(labelText: "Email"),
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
                      child:  Row(
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
        )));
  }
}
