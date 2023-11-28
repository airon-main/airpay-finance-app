import 'package:air_pay/pages/card/cardPage.dart';
import 'package:air_pay/pages/card/cardPageController.dart';
import 'package:air_pay/pages/shop/shop.dart';
import 'package:air_pay/pages/home/home.dart';
import 'package:air_pay/pages/user/user.dart';
import 'package:air_pay/pages/navigation/navigationController.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});

  final NavigationController navigationController =
      Get.put(NavigationController(), permanent: false);

  @override
  Widget build(BuildContext context) {
    var argument = Get.arguments;
    CardPageController cardPageController = Get.find<CardPageController>();
    if (argument == "signup") {
      cardPageController.addAirPayCard();
    }
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: darkcolor['background'],
        bottomNavigationBar:
            buildBottomNavigationMenu(context, navigationController),
        body: Obx(
          () => IndexedStack(
            index: navigationController.tabIndex.value,
            children: [
              Home(),
              const ShoppingPage(),
              const myCardPage(),
              homeUserPage(),
            ],
          ),
        ),
      ),
    );
  }

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Container(
          decoration: BoxDecoration(
              border:
                  Border(top: BorderSide(color: darkcolor['card'], width: 1))),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: darkcolor['carddark'],
            selectedItemColor: darkcolor['contrast'],
            unselectedItemColor: darkcolor['disabled'],
            currentIndex: navigationController.tabIndex.value,
            onTap: navigationController.changeTabIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: 'shop'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.wallet), label: 'financial'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'user'),
            ],
          ),
        )));
  }
}
