import 'package:air_pay/extensions.dart';
import 'package:air_pay/pages/Shopping%20Page/Payment%20Page/topupPage.dart';
import 'package:air_pay/pages/cardPage/cardPage.dart';
import 'package:air_pay/pages/Shopping%20Page/shoppingPage.dart';
import 'package:air_pay/pages/home/home.dart';
import 'package:air_pay/pages/homeUserPage/homeUser.dart';
import 'package:air_pay/pages/navigation/navigationController.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});

  final NavigationController navigationController =
      Get.put(NavigationController(), permanent: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkcolor['background'],
      // appBar: AppBar(
      //   flexibleSpace: Container(
      //     height: double.infinity,
      //     alignment: Alignment.bottomCenter,
      //     decoration: BoxDecoration(
      //       color: darkcolor['background'],
      //       border: Border(
      //         bottom: BorderSide(width: 1, color: darkcolor['card']),
      //       ),
      //     ),
      //     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      //     child: Row(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         const CircleAvatar(
      //           backgroundImage: AssetImage('assets/images/User.png'),
      //           radius: 17,
      //         ),
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Text(
      //               "Welcome Back",
      //               style: TextStyle(
      //                   color: darkcolor['disabled'],
      //                   fontSize: 10,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //             Text(
      //               "User Name",
      //               style: TextStyle(
      //                   color: darkcolor['contrast'],
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ],
      //         ),
      //         const Spacer(),
      //         Container(
      //           width: 34,
      //           height: 34,
      //           decoration: BoxDecoration(
      //             color: darkcolor['card'],
      //             shape: BoxShape.circle,
      //           ),
      //           child: Icon(
      //             Icons.notifications_none,
      //             color: darkcolor['contrast'],
      //             size: 22,
      //           ),
      //         ),
      //       ].withSpaceBetween(width: 10),
      //     ),
      //   ),
      // ),
      bottomNavigationBar:
          buildBottomNavigationMenu(context, navigationController),
      body: Obx(() => IndexedStack(
            index: navigationController.tabIndex.value,
            children: const [
              Home(),
              ShoppingPage(),
              myCardPage(),
              homeUserPage(),
            ],
          )),
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
