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
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.cardDark
      ),
      child: Column(
        children: [
          judulPage(title: "Most Popular", title1: "View more"),
          shopCon(imagePath: 'assets/images/gamepad.png', title: "Top Up", imageAssetPath: "assets/images/TopUp.png"),
          shopCon(imagePath: 'assets/images/listrik.png', title: "PLN", imageAssetPath: "assets/images/pln.png"),
          shopCon(imagePath: 'assets/images/sehat.png', title: "BPJS", imageAssetPath: "assets/images/bpjs.png"),
          shopCon(imagePath: 'assets/images/air.png', title: "PDAM", imageAssetPath: "assets/images/pam.png"),
          SizedBox(height: 20,),
          judulPage(title: "Promo", title1: "View more"),
          promoPage(imageAssetPath: "assets/images/Rectangle 55.png", text1: "Mobbile Legends", text2: "999,999 Diamonds", text3: "Rp.10.000", text4: "99%"),
          promoPage(imageAssetPath: "assets/images/gensin.png", text1: "Genshin Impact", text2: "999,999 Diamonds", text3: "Rp.10.000", text4: "99%")
        ],
      ),
    );
  }
}