import 'package:air_pay/boxes.dart';
import 'package:air_pay/extensions.dart';
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

  MyCard selectedCard() {
    List<dynamic> cards = boxCard.get("myCards");
    MyCard selectedCard = cards[user.selectedCard];
    return selectedCard;
  }

  Future<void> addAirPayCard() async {
    List<MyCard> newCards = [
      MyCard(
        name: "AirPay E-Money",
        nominal: 0,
        image: "assets/images/AirPayCard.png",
        mainColor: "#F2CE18",
        contrastMainColor: "#FFFFFF",
      )
    ];
    boxCard.put("myCards", newCards);
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
    Get.defaultDialog(
      title: "Careful",
      middleText:
          "Are you sure you want to delete this card?, tap outside to cancel",
      backgroundColor: darkcolor['main'],
      titleStyle: TextStyle(color: darkcolor['contrastmain']),
      middleTextStyle: TextStyle(color: darkcolor['contrastmain']),
      radius: 5,
      actions: [
        GestureDetector(
            onTap: () {
              List<dynamic> card = boxCard.get("myCards");
              card.removeAt(index);
              boxCard.put("myCards", card);
              update();
            },
            child: Text(
              "Delete it",
              style: TextStyle(color: darkcolor['red']),
            )),
      ],
    );
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

class MySelectedCard extends StatelessWidget {
  const MySelectedCard({super.key});

  @override
  Widget build(BuildContext context) {
    CardPageController cardPageController = CardPageController();
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: darkcolor['main'], borderRadius: BorderRadius.circular(5)),
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        children: [
          Text(
            formatNominal(nominal: cardPageController.selectedCard().nominal),
            style: TextStyle(fontSize: 32, color: darkcolor['contrastmain']),
          ),
          Text(
            "Total Balance",
            style: TextStyle(color: darkcolor['contrastmain']),
          ),
        ].withSpaceBetween(height: 5),
      ),
    );
  }
}
