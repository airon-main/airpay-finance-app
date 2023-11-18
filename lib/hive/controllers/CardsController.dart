import 'package:air_pay/boxes.dart';
import 'package:air_pay/hive/cards.dart';
import 'package:air_pay/hive/user.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class CardsController extends GetxController {
  Future<void> addCard({
    required String name,
    required String imagePath,
    required int nominal,
  }) async {
    Card newCard = Card(name: name, nominal: nominal, image: imagePath);
    List<Card> card = boxCard.get("myCard");
    card.add(newCard);
  }
}
