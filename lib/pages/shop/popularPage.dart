import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'komponen/Component.dart';

class popularPage extends StatefulWidget {
  const popularPage({Key? key}) : super(key: key);

  @override
  State<popularPage> createState() => _popularPageState();
}

class _popularPageState extends State<popularPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: darkcolor["background"]),
      child: Column(
        children: [
          const judulPage(title: "Most Popular", title1: "View more"),
          Row(
            children: [
              Expanded(
                  child: shopCon(
                      icon: Icons.videogame_asset,
                      title: "Top Up",
                      imageAssetPath: "assets/images/topup.png")),
              Expanded(
                child: shopCon(
                    icon: Icons.videogame_asset,
                    title: "PLN",
                    imageAssetPath: "assets/images/kelistrikan.png"),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: shopCon(
                      icon: Icons.add_box,
                      title: "BPJS",
                      imageAssetPath: "assets/images/kesehatan.png")),
              Expanded(
                child: shopCon(
                    icon: Icons.water_drop_sharp,
                    title: "PDAM",
                    imageAssetPath: "assets/images/perairan.png"),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const judulPage(title: "Promo", title1: "View more"),
          const promoPage(
              imageAssetPath: "assets/images/Rectangle 55.png",
              text1: "Mobbile Legends",
              text2: "999,999 Diamonds",
              text3: "Rp.10.000",
              text4: "99%"),
          const promoPage(
              imageAssetPath: "assets/images/gensin.png",
              text1: "Genshin Impact",
              text2: "999,999 Diamonds",
              text3: "Rp.10.000",
              text4: "99%"),
          const promoPage(
              imageAssetPath: "assets/images/kuota.png",
              text1: "Kuota",
              text2: "999,999 Diamonds",
              text3: "Rp.10.000",
              text4: "99%"),
        ],
      ),
    );
  }
}
