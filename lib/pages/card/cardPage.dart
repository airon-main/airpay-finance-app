import 'package:air_pay/extensions.dart';
import 'package:flutter/material.dart';
import '../shop/komponen/Component.dart';

class myCardPage extends StatefulWidget {
  const myCardPage({Key? key}) : super(key: key);

  @override
  State<myCardPage> createState() => _myCardPageState();
}

class _myCardPageState extends State<myCardPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const padSize = 16.0;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.width * (padSize * 5 / size.width)),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: AppColors.card, width: 1)),
            color: AppColors.cardDark,
          ),
          padding: EdgeInsets.all(size.width * (padSize / size.width)),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "My Cards",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Lato',
                  ),
                ),
                SizedBox(
                  width: size.width * (padSize / size.width),
                ),
                RoundedIconButton(
                  icon: Icons.notifications_none,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(color: AppColors.background),
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
          Container(
            height: 77,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: AppColors.card),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add,
                  color: AppColors.contrast,
                ),
                const Text(
                  "Add Card",
                  style: TextStyle(color: AppColors.contrast),
                )
              ].withSpaceBetween(width: 5),
            ),
          )
        ].withSpaceBetween(height: 10)),
      ),
    );
  }
}
