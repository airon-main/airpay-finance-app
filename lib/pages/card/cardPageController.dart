import 'package:air_pay/boxes.dart';
import 'package:air_pay/formatter.dart';
import 'package:air_pay/hive/cards.dart';
import 'package:air_pay/hive/user.dart';
import 'package:air_pay/pages/shop/komponen/Component.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardPageController extends GetxController {
  final user = boxUser.get("myUser") as User;

  String isSelectedString(int index) {
    if (index == user.selectedCard) {
      return "(selected)";
    } else {
      return "";
    }
  }

  Future<void> addAirPayCard() async {
    List<MyCard> newCard = [
      MyCard(
        name: "AirPay E-Money",
        nominal: 0,
        image: "assets/images/AirPayCard.png",
        mainColor: "#F2CE18",
        contrastMainColor: "#FFFFFF",
      )
    ];
    boxCard.put("myCards", newCard);
  }

  Future<void> addCard({
    required MyCard newCard,
  }) async {
    List<dynamic> card = boxCard.get("myCards");
    card.add(newCard);
    boxCard.put("myCards", card);
    Get.back();
    update();
  }

  Future<void> editCard({
    required int index,
    required MyCard updatedCard,
  }) async {
    List<dynamic> cardList = boxCard.get("myCards");

    if (index >= 0 && index < cardList.length) {
      cardList[index] = updatedCard;
      boxCard.put("myCards", cardList);
      Get.back();
      update();
    }
  }



  Future<void> deleteCard({
    required int index,
  }) async {
    List<dynamic> card = boxCard.get("myCards");
    card.removeAt(index);
    boxCard.put("myCards", card);
    update();
  }
}

class MyCardList extends StatelessWidget {
  const MyCardList({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = boxCard.get("myCards");
    return cards != null
        ? GetBuilder<CardPageController>(
            builder: (cont) => ListView.separated(
                  shrinkWrap: true,
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    MyCard singleCard = cards[index];
                    return myCard(
                      isSelectedString: cont.isSelectedString(index),
                      imagePath: singleCard.image,
                      label: singleCard.name,
                      nominal: formatNominal(nominal: singleCard.nominal),
                      onDelete: () {
                        cont.deleteCard(index: index);
                      },
                      onEdit: () {
                        Get.toNamed(
                          "/card/addcard",
                          arguments: {
                            'index': index,
                            'cardDetails': singleCard,
                          },
                        );
                      },

                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(height: 10),
                ))
        : Container(
            height: 77,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text("No Cards?",
                style: TextStyle(color: darkcolor['contrast'])),
          );
  }
}
