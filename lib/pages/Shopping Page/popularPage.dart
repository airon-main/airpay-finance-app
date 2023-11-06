import 'package:flutter/material.dart';
import 'package:landing_page/Component.dart';


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
          shopCon(imagePath: 'images/gamepad.png', title: "Top Up", imageAssetPath: "images/TopUp.jpg"),
          shopCon(imagePath: 'images/listrik.png', title: "PLN", imageAssetPath: "images/pln.png"),
          shopCon(imagePath: 'images/sehat.png', title: "BPJS", imageAssetPath: "images/bpjs.png"),
          shopCon(imagePath: 'images/banyu.png', title: "PDAM", imageAssetPath: "images/pam.png"),
          SizedBox(height: 20,),
          judulPage(title: "Promo", title1: "View more"),
          promoPage(imageAssetPath: "images/Rectangle 55.png", text1: "Mobbile Legends", text2: "999,999 Diamonds", text3: "Rp.10.000", text4: "99%"),
          promoPage(imageAssetPath: "images/gensin.png", text1: "Genshin Impact", text2: "999,999 Diamonds", text3: "Rp.10.000", text4: "99%")
        ],
      ),
    );
  }
}