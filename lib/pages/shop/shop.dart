import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'komponen/Component.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          height: double.infinity,
          alignment: Alignment.bottomCenter,
          color: darkcolor['background'],
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Shopping Page",
                style: TextStyle(
                  color: darkcolor['contrast'],
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: darkcolor['card'],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.notifications_none,
                  color: darkcolor['contrast'],
                  size: 22,
                ),
              ),
            ].withSpaceBetween(width: 10),
          ),
        ),
      ),
      body: Container(
        color: darkcolor['background'],
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: darkcolor['card'], width: 1))),
                child: const myTextField(
                  hintText: "Search",
                )),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Column(
                    children: [
                      judulPage(title: "Most Popular", title1: "View more"),
                      Row(
                        children: [
                          Expanded(
                              child: shopCon(
                                  imagePath: 'assets/images/gamepad.png',
                                  title: "Top Up",
                                  imageAssetPath: "assets/images/topup.png")),
                          Expanded(
                            child: shopCon(
                                imagePath: 'assets/images/listrik.png',
                                title: "PLN",
                                imageAssetPath:
                                    "assets/images/kelistrikan.png"),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: shopCon(
                                  imagePath: 'assets/images/sehat.png',
                                  title: "BPJS",
                                  imageAssetPath:
                                      "assets/images/kesehatan.png")),
                          Expanded(
                            child: shopCon(
                                imagePath: 'assets/images/air.png',
                                title: "PDAM",
                                imageAssetPath: "assets/images/perairan.png"),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      judulPage(title: "Promo", title1: "View more"),
                      promoPage(
                          imageAssetPath: "assets/images/Rectangle 55.png",
                          text1: "Mobbile Legends",
                          text2: "999,999 Diamonds",
                          text3: "Rp.10.000",
                          text4: "99%"),
                      promoPage(
                          imageAssetPath: "assets/images/gensin.png",
                          text1: "Genshin Impact",
                          text2: "999,999 Diamonds",
                          text3: "Rp.10.000",
                          text4: "99%"),
                      promoPage(
                          imageAssetPath: "assets/images/kuota.png",
                          text1: "Kuota",
                          text2: "999,999 Diamonds",
                          text3: "Rp.10.000",
                          text4: "99%"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
