import 'package:air_pay/extensions.dart';
import 'package:air_pay/formatter.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../variables/transaction.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: "Top Up",
        // borderColor: Colors.transparent, //* menghilangkan border bottom
        //* Penggunaan jika ada tombol back, masukkan ke gesture detector kalau mau ada logic get.back
        prefixWidget: GestureDetector(
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
                      formatNominal(nominal: 500000),
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
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Up Methods",
                      style: TextStyle(
                          fontSize: 14, color: darkcolor['contrast'])),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "View More",
                      style:
                          TextStyle(fontSize: 10, color: darkcolor['disabled']),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: darkcolor['carddark'],
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 10,
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return myPayMetode(index: index);
                  },
                  itemCount: metodeData.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: darkcolor['card'],
                      height: 25,
                    );
                  },
                ),
              ),
            ].withSpaceBetween(height: 10),
          ),
        ),
      ),
    );
  }
}
