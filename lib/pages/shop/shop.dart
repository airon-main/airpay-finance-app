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
      appBar: const myAppBar(
        title: "Shopping Page",
        borderColor: Colors.transparent, //* menghilangkan border bottom
        //* Penggunaan jika ada tombol back, masukkan ke gesture detector kalau mau ada logic get.back
        // prefixWidget: Container(
        //   padding: const EdgeInsets.only(right: 10),
        //   width: 34,
        //   height: 34,
        //   child: Icon(
        //     Icons.arrow_back,
        //     color: darkcolor['contrast'],
        //     size: 22,
        //   ),
        // ),
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
                  child: Column(
                    children: [
                      judulPage(title: "Most Popular", title1: "View more"),
                      Row(
                        children: [
                          Expanded(
                              child: myImageButton(
                            onClick: () {},
                            icon: Icons.videogame_asset,
                            imagePath: 'assets/images/topup.png',
                                text: "Top Up",
                            height: 100,
                            width: 165,
                          )),
                          SizedBox(width: 10,),
                          Expanded(
                              child: myImageButton(
                                onClick: () {},
                                icon: Icons.videogame_asset,
                                imagePath: 'assets/images/PLN.png',
                                text: "PLN ",
                                height: 100,
                                width: 165,
                              )),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                              child: myImageButton(
                                onClick: () {},
                                icon: Icons.add_box,
                                imagePath: 'assets/images/BPJS.png',
                                text: "BPJS",
                                height: 100,
                                width: 165,
                              )),
                          SizedBox(width: 10,),
                          Expanded(
                              child: myImageButton(
                                onClick: () {},
                                icon: Icons.water_drop_sharp,
                                imagePath: 'assets/images/PDAM.png',
                                text: "PDAM",
                                height: 100,
                                width: 165,
                              )),
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
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
