import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom.dart';
import '../shop/komponen/Component.dart';

class myCardPage extends StatefulWidget {
  const myCardPage({Key? key}) : super(key: key);

  @override
  State<myCardPage> createState() => _myCardPageState();
}

class _myCardPageState extends State<myCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const myAppBar(
        title: "My Cards",
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: darkcolor['background']),
        child: Column(
            children: [
          const myCard(
              imagePath: "assets/images/Frame 83.png",
              text1: "Airpay E-Money",
              text2: "Rp.120,000",
              text3: "Top Up",
              text4: "•",
              text5: "Transfer"),
          const myCard(
              imagePath: "assets/images/Ovo.png",
              text1: "OVO E-Money",
              text2: "Rp.120,000",
              text3: "Top Up",
              text4: "•",
              text5: "Transfer"),
          const myCard(
              imagePath: "assets/images/BNI.png",
              text1: "1234 5678 0987",
              text2: "Rp.120,000",
              text3: "Top Up",
              text4: "•",
              text5: "Transfer"),
          SizedBox(
            height: 77,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Get.toNamed("/card/addcard");
              },
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  backgroundColor: darkcolor['card'],
                  foregroundColor: darkcolor['contrast']),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add,
                  ),
                  const Text(
                    "Add Card",
                  )
                ].withSpaceBetween(width: 5),
              ),
            ),
          )
        ].withSpaceBetween(height: 10)),
      ),
    );
  }
}
