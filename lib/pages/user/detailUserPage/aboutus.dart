import 'package:air_pay/extensions.dart';
import 'package:flutter/material.dart';

import '../../../variables/colorpalette.dart';
import '../../shop/komponen/Component.dart';

class aboutUsPage extends StatelessWidget {
  const aboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const padSize = 16.0;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.width * (padSize * 5 / size.width)),
        child: Container(
          decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: darkcolor['card'], width: 1)),
            color: darkcolor['background'],
          ),
          padding: EdgeInsets.all(size.width * (padSize / size.width)),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Account Information",
                  style: TextStyle(
                    color: darkcolor['contrast'],
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
        decoration: BoxDecoration(color: darkcolor['background']),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Image.asset("assets/images/airpay.png"),
                  Text("AirPay Finance App ©",style: TextStyle(
                    color: darkcolor['contrast']
                  ),),
                  Text("2023-now", style: TextStyle(
                    color: darkcolor['disabled'],
                    fontSize: 10
                  ),)
                ].withSpaceBetween(height: 5),
              ),
            ),
            Text("Credits",style: TextStyle(
                color: darkcolor['disabled']
            ),),
            rowAboutUs(text: "Aaron", text1: "Ikhwan Saputra", text2: "Designer & Coder"),
            rowAboutUs(text: "Altan", text1: "Assyfa Naura Putra", text2: "Coder"),
            SizedBox(height: 15,),
            Text("Our Other Apps",style: TextStyle(
                color: darkcolor['disabled']
            ),),
            Center(
              child: Text("Not yet, This is Our Apps :)",style: TextStyle(
                  color: darkcolor['contrast']
              ),),
            )
          ].withSpaceBetween(height: 10, width: 10),
        ),
      ),
    );
  }
}
