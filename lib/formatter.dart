import 'package:air_pay/boxes.dart';
import 'package:air_pay/hive/cards.dart';
import 'package:air_pay/hive/user.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';


String formatNominal({
  required double nominal,
}) {
  var nominalFormat = MoneyMaskedTextController(
      thousandSeparator: ",",
      leftSymbol: "Rp",
      precision: 0,
      decimalSeparator: "");
  nominalFormat.updateValue(nominal);
  return nominalFormat.text;
}

String removeNonNumeric(String text) {
  // Replace all non-numeric characters with an empty string
  return text.replaceAll(RegExp(r'[^0-9]'), '');
}