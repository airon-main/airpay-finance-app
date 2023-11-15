import 'package:air_pay/extensions.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';

import '../../../variables/colorpalette.dart';
import '../../shop/komponen/Component.dart';

class cachePage extends StatelessWidget {
  const cachePage({Key? key}) : super(key: key);

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
                  "Cache",
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
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: darkcolor['background']),
        child: Column(
          children: [
            detailAccInfo(
                childWidget: myButton(
                  text: "Clean   120MB",
                  onClick: () {},
                  textAlign: TextAlign.center,
                  backgroundColor: darkcolor['card'],
                  foregroundColor: darkcolor['contrast'],
                ),
                text: "Cache"),
            dropdownChoices(
                text: "Max Size",
                text1: "128MB",
                icon: Icons.arrow_drop_down_rounded)
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
