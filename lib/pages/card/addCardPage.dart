import 'package:air_pay/extensions.dart';
import 'package:air_pay/formatter.dart';
import 'package:air_pay/hive/cards.dart';
import 'package:air_pay/pages/card/cardPageController.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class addCardPage extends StatelessWidget {
  const addCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController cardNameTxtEditCtr = TextEditingController();
    TextEditingController photoPathTxtEditCtr = TextEditingController();
    TextEditingController mainColorTxtEditCtr =
        TextEditingController(text: "#F2CE18");
    TextEditingController contrastMainTxtEditCtr =
        TextEditingController(text: "#FFFFFF");
    CardPageController cardPageController = Get.find<CardPageController>();

    final args = Get.arguments;
    int? index;
    MyCard? existingCard;

    if (args != null && args is Map<String, dynamic>) {
      index = args['index'];
      existingCard = args['cardDetails'];

      if (existingCard != null) {
        cardNameTxtEditCtr.text = existingCard.name;
        photoPathTxtEditCtr.text = existingCard.image;
        mainColorTxtEditCtr.text = existingCard.mainColor;
        contrastMainTxtEditCtr.text = existingCard.contrastMainColor;
      }
    }
    return Scaffold(
      appBar: myAppBar(
        title: "Add / Edit Card",
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
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: darkcolor['background']),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter Card Data",
              style: TextStyle(color: darkcolor['contrast']),
            ),
            myTextField(
              controller: cardNameTxtEditCtr,
              label: "Card Name",
              labelWidth: 90,
            ),
            myTextField(
              controller: photoPathTxtEditCtr,
              label: "Photo Path",
              labelWidth: 90,
            ),
            myTextField(
              controller: mainColorTxtEditCtr,
              label: "Main Color",
              labelWidth: 90,
            ),
            myTextField(
              controller: contrastMainTxtEditCtr,
              label: "Contrast Main",
              labelWidth: 90,
            ),
            myButton(
                text: (index != null)
                    ? "Edit"
                    : "Add", // Change button text based on condition
                onClick: () {
                  if (index != null) {
                    cardPageController.editCard(
                      index: index,
                      updatedCard: MyCard(
                        name: cardNameTxtEditCtr.text,
                        nominal: 0,
                        image: photoPathTxtEditCtr.text,
                        mainColor: mainColorTxtEditCtr.text,
                        contrastMainColor: contrastMainTxtEditCtr.text,
                      ),
                    );
                  } else {
                    cardPageController.addCard(
                      newCard: MyCard(
                        name: cardNameTxtEditCtr.text,
                        nominal: 0,
                        image: photoPathTxtEditCtr.text,
                        mainColor: mainColorTxtEditCtr.text,
                        contrastMainColor: contrastMainTxtEditCtr.text,
                      ),
                    );
                  }
                },
                textAlign: TextAlign.center,
                backgroundColor: darkcolor['main'],
                foregroundColor: darkcolor['contrastmain']),
            myButton(
                text: "Reset",
                onClick: () {
                  cardPageController.addAirPayCard();
                },
                textAlign: TextAlign.center,
                backgroundColor: darkcolor['card'],
                foregroundColor: darkcolor['red']),
          ].withSpaceBetween(height: 10),
        ),
      ),
    );
  }
}
