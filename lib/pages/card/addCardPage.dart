import 'package:air_pay/extensions.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';

import '../shop/komponen/Component.dart';

class addCardPage extends StatelessWidget {
  const addCardPage({Key? key}) : super(key: key);

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
            const judulPage(title: "Enter Card Data"),
            const myTextField(
              hintText: "Account Number",
            ),
            myCustomElevatedButton(
                text: "Add Custom Picture",
                onPressed: () {},
                backgroundColor: AppColors.cardDark,
                textColor: Colors.white),
            myCustomElevatedButton(
                text: "Scan",
                onPressed: () {},
                backgroundColor: AppColors.main,
                textColor: Colors.black)
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
