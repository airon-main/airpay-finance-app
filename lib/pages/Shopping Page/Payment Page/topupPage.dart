import 'package:flutter/material.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:air_pay/pages/Shopping Page/komponen/Component.dart';

class buyPage extends StatefulWidget {
  const buyPage({Key? key}) : super(key: key);

  @override
  State<buyPage> createState() => _buyPageState();
}

class _buyPageState extends State<buyPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 16.0;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(size.width * (padSize * 5 / size.width)),
          child: Container(
            color: AppColors.cardDark,
            padding: EdgeInsets.all(size.width * (padSize / size.width)),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shopping Page",
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
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: AppColors.cardDark),
            child: Column(
          children: [
            judulPage(title: "Enter User ID*", title1: null),
            const myTextField(hintText: "Username"),
            SizedBox(
              height: 10,
            ),
            const myTextField(hintText: "Zone ID"),
            judulPage(title: "Select TopUp Nominal*", title1: null),
            promoPage(
                imageAssetPath: "assets/images/Rectangle 55.png",
                text1: "Mobbile Legends",
                text2: "999,999 Diamonds",
                text3: "Rp.10.000",
                text4: "99%"),
            TopUpNominal(
                imageAssetPath: "assets/images/Rectangle 55.png",
                text1: "Mobbile Legends",
                text2: "40 Diamonds",
                text3: "Rp.13.000"),
            TopUpNominal(
                imageAssetPath: "assets/images/Rectangle 55.png",
                text1: "Mobbile Legends",
                text2: "120 Diamonds",
                text3: "Rp.50.000"),
            TopUpNominal(
                imageAssetPath: "assets/images/Rectangle 55.png",
                text1: "Mobbile Legends",
                text2: "500 Diamonds",
                text3: "Rp.100.000"),
            TopUpNominal(
                imageAssetPath: "assets/images/Rectangle 55.png",
                text1: "Mobbile Legends",
                text2: "2,000 Diamonds",
                text3: "Rp.500.000"),
            judulPage(title: "Email Receipt (Optional)", title1: null),
            const myTextField(hintText: "Email"),
            judulPage(title: "Confirm Payment", title1: null),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.card,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    child: Row(
                      children: [
                        Text(
                          "Your Total :",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontFamily: 'Roboto'),
                        ),
                        Text(
                          "Rp.10,000",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: AppColors.main,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          customElevatedButton(text: "Cancel", onPressed: (){}, backgroundColor: AppColors.cardDark, textColor: Colors.white),
                          customElevatedButton(text: "Confirm", onPressed: () {}, backgroundColor: AppColors.main, textColor: Colors.black)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
            ),
          ),
        )
    );
  }
}
