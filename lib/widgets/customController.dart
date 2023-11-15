import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mySwitchController extends GetxController {
  RxBool on = false.obs; // our observable

  // swap true/false & save it to observable
  void toggle() => on.value = on.value ? false : true;
}

class myDropdownController extends GetxController {
  String? selectedValue;
  var language = ['English', 'Espanol'];
  void onSelected(String value) {
    selectedValue = value;
    update();
    print(selectedValue);
    changeLanguage(selectedValue);
  }

  changeLanguage(String? selectedLanguage) {
    switch (selectedLanguage) {
      case 'English':
        Get.updateLocale(const Locale('en_US'));
        print('Changed to En');
        break;
      case 'Espanol':
        Get.updateLocale(const Locale('en_US'));
        print('Changed to Es');
        break;
      default:
        Get.updateLocale(const Locale('en_US'));
        print('Fallback to En');
        break;
    }
  }
}
