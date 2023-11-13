import 'package:flutter/material.dart';

import '../../shop/komponen/Component.dart';

class settingPage extends StatelessWidget {
  const settingPage({Key? key}) : super(key: key);

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
                  "Settings",
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
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: AppColors.background),
        child: Column(
          children: [
            dropdownChoices(text: "Language", text1: "English", icon: Icons.arrow_drop_down_rounded)
          ],
        ),
      ),
    );
  }
}
