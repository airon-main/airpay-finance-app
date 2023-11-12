import 'package:air_pay/extensions.dart';
import 'package:flutter/material.dart';

import '../../shop/komponen/Component.dart';

class apperancePage extends StatelessWidget {
  const apperancePage({Key? key}) : super(key: key);

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
                  "Apperance",
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
        decoration: BoxDecoration(
          color: AppColors.background
        ),
        child: Column(
          children: [
            judulPage(title: "Themes"),
            Container(
              padding: EdgeInsets.only(left: 7),
              child: Row(
                children: [
                  Text("Custom Color", style: TextStyle(
                    color: AppColors.disabled
                  ),),
                  Expanded(
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        color: AppColors.card,
                        borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: Row(
                        children: [
                          Icon(Icons.circle, size: 18, color: AppColors.main,),
                          Expanded(
                            child: Text("#f2ce18", style: TextStyle(
                                color: AppColors.disabled
                            ),),
                          )
                        ].withSpaceBetween(width: 5),
                      ),
                    ),
                  )
                ].withSpaceBetween(width: 10),
              ),
            ),
            dropdownChoices(text: "Icon Theme", text1: "Baseline", icon: Icons.arrow_drop_down_rounded)
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
