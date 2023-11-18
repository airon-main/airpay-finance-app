import 'package:air_pay/boxes.dart';
import 'package:air_pay/hive/cards.dart';
import 'package:air_pay/hive/user.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class CardsController extends GetxController {
  Future<void> addAirPayCard() async {
    boxCard.delete("myCards");
    MyCard newCard = MyCard(
      name: "AirPay E-Money",
      nominal: 0,
      image: "assets/images/AirPayCard.png",
      mainColor: "#F2CE18",
      contrastMainColor: "#FFFFFF",
    );
    List<MyCard>? card = boxCard.get("myCards") as List<MyCard>?;
    if (card != null) {
      card.add(newCard);
      boxCard.put("myCards", card);
    } else {
      List<MyCard> newCards = [newCard];
      boxCard.put("myCards", newCards);
    }
  }

  Future<void> addCard({
    required String name,
    required String imagePath,
    required int nominal,
    String? mainColor,
    String? contrastMainColor,
  }) async {
    String nonNullMainColor = mainColor ?? "#F2CE18";
    String nonNullContrastMainColor = contrastMainColor ?? "#FFFFFF";
    MyCard newCard = MyCard(
      name: name,
      nominal: nominal,
      image: imagePath,
      mainColor: nonNullMainColor,
      contrastMainColor: nonNullContrastMainColor,
    );
    List<MyCard> card = boxCard.get("myCards");
    card.add(newCard);
    boxCard.put("myCards", card);
  }

  Future<void> changeCard({
    required changeToIndex,
  }) async {
    List<MyCard> card = boxCard.get("myCards");
  }
}
