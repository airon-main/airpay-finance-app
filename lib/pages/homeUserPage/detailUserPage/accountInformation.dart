import 'package:air_pay/extensions.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';

import '../../Shopping Page/komponen/Component.dart';

class accountInfoPage extends StatelessWidget {
  const accountInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 16.0;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.width * (padSize * 5 / size.width)),
        child: Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: AppColors.card, width: 1)),
            color: AppColors.cardDark,
          ),
          padding: EdgeInsets.all(size.width * (padSize / size.width)),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Account Information",
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
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: AppColors.background),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.center,
              child: Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/Frame 93.png"),
                  fit: BoxFit.cover,
                )),
                child: Image.asset(
                  "assets/images/camera.png",
                  height: 24,
                  width: 24,
                ),
              ),
            ),
            detailAccInfo(
                childWidget: myTextField(
                  hintText: "altantheprodigy",
                ),
                text: "Username"),
            detailAccInfo(
                childWidget: myTextField(
                  hintText: "Altan Assyfa Naura Putra",
                ),
                text: "Full Name"),
            detailAccInfo(
                childWidget: myTextField(
                  hintText: "altantheprodigy@gmail.com",
                ),
                text: "Email"),
            detailAccInfo(
                childWidget: myButton(
                  text: "change Button",
                  onClick: () {},
                  textAlign: TextAlign.center,
                  backgroundColor: AppColors.card,
                  foregroundColor: AppColors.contrast,
                ),
                text: "Password"),
            detailAccInfo(
                childWidget: myTextField(
                  hintText: "1a2B3c4D5e6F7g8",
                ),
                text: "AirPay ID"),
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
