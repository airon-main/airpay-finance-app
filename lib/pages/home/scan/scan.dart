import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Scan extends StatelessWidget {
  const Scan({super.key});

  @override
  Widget build(BuildContext context) {
    var nominalFormat = MoneyMaskedTextController(
        thousandSeparator: ",",
        leftSymbol: "Rp",
        precision: 0,
        decimalSeparator: "");
    nominalFormat.updateValue(500000);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness:
              Brightness.light, // For Android (light icons)
          statusBarBrightness: Brightness.dark, // For iOS (light icons)
        ),
        flexibleSpace: Container(
          height: double.infinity,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: darkcolor['background'],
            border: Border(
              bottom: BorderSide(width: 1, color: darkcolor['card']),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/User.png'),
                radius: 17,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        color: darkcolor['disabled'],
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "User Name",
                    style: TextStyle(
                        color: darkcolor['contrast'],
                        fontWeight: FontWeight.w500),
                  ),
                ],
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
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: darkcolor['main'],
                    borderRadius: BorderRadius.circular(5)),
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  children: [
                    Text(
                      nominalFormat.text,
                      style: TextStyle(
                          fontSize: 32, color: darkcolor['contrastmain']),
                    ),
                    Text(
                      "Total Balance",
                      style: TextStyle(color: darkcolor['contrastmain']),
                    ),
                  ].withSpaceBetween(height: 5),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.all(10),
                    backgroundColor: darkcolor['card'],
                    foregroundColor: darkcolor['contrast']),
                child: Row(
                  children: [
                    const Icon(Icons.credit_card),
                    const Expanded(child: Text("My Card")),
                    const Icon(Icons.arrow_forward_rounded),
                  ].withSpaceBetween(width: 10),
                ),
              ),
            ].withSpaceBetween(height: 10),
          ),
        ),
      ),
    );
  }
}
