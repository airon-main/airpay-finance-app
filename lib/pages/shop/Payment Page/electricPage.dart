import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:air_pay/pages/shop/komponen/Component.dart';

class electricPage extends StatefulWidget {
  const electricPage({Key? key}) : super(key: key);

  @override
  State<electricPage> createState() => _electricPageState();
}

class _electricPageState extends State<electricPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const padSize = 16.0;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(size.width * (padSize * 5 / size.width)),
          child: Container(
            decoration:  BoxDecoration(
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
                    "Shopping Page",
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
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: darkcolor['card'], width: 1)),
            color: darkcolor['carddark'],
          ),
          child: Column(
            children: [
              const judulPage(title: "Nomor Meter/ID Pelanggan*", title1: null),
              const myTextField(hintText: "Nomor Meter/ID Pelanggan"),
              const judulPage(title: "Select TopUp Nominal*", title1: null),
              const promoPage(
                  imageAssetPath: "assets/images/kelistrikan.png",
                  text1: "Token Listrik",
                  text2: "999,999 Token Listrik",
                  text3: "Rp.10.000",
                  text4: "99%"),
              const TopUpNominal(
                  imageAssetPath: "assets/images/kelistrikan.png",
                  text1: "Token Listrik",
                  text2: "10,000 Token Listrik",
                  text3: "Rp.13.000"),
              const TopUpNominal(
                  imageAssetPath: "assets/images/kelistrikan.png",
                  text1: "Token Listrik",
                  text2: "10,000 Token Listrik",
                  text3: "Rp.13.000"),
              const TopUpNominal(
                  imageAssetPath: "assets/images/kelistrikan.png",
                  text1: "Token Listrik",
                  text2: "10,000 Token Listrik",
                  text3: "Rp.13.000"),
              const TopUpNominal(
                  imageAssetPath: "assets/images/kelistrikan.png",
                  text1: "Token Listrik",
                  text2: "10,000 Token Listrik",
                  text3: "Rp.13.000"),
              const judulPage(title: "Email Receipt (Optional)", title1: null),
              const myTextField(hintText: "Email"),
              const judulPage(title: "Confirm Payment", title1: null),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: darkcolor['card'],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(1),
                      child:  Row(
                        children: [
                          Text(
                            "Your Total :",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: darkcolor['contrast'],
                                fontFamily: 'Roboto'),
                          ),
                          Text(
                            "Rp.10,000",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: darkcolor['main'],
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
                            customElevatedButton(
                                text: "Cancel",
                                onPressed: () {},
                                backgroundColor: darkcolor['carddark'],
                                textColor: darkcolor['contrast']),
                            customElevatedButton(
                                text: "Confirm",
                                onPressed: () {},
                                backgroundColor: darkcolor['main'],
                                textColor: darkcolor['contrastmain'])
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
