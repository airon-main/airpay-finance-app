import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  padding: const EdgeInsets.only(right: 10),
                  width: 34,
                  height: 34,
                  child: Icon(
                    Icons.arrow_back,
                    color: darkcolor['contrast'],
                    size: 22,
                  ),
                ),
              ),
              Text(
                "Notfication",
                style: TextStyle(
                  color: darkcolor['contrast'],
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
            ],
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
              Container(),
            ].withSpaceBetween(height: 10),
          ),
        ),
      ),
    );
  }
}

class myNotification extends StatelessWidget {
  const myNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}