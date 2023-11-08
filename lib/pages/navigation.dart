import 'package:air_pay/extensions.dart';
import 'package:air_pay/pages/Shopping%20Page/Payment%20Page/electricPage.dart';
import 'package:air_pay/pages/Shopping%20Page/shoppingPage.dart';
import 'package:air_pay/pages/home/home.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Shopping Page/Payment Page/topupPage.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Home(),
    ShoppingPage(),
    buyPage(),
    electricPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkcolor['background'],
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color(0x00000000),
            statusBarIconBrightness: Brightness.light, // Android (light icons)
            statusBarBrightness: Brightness.dark, // iOS (light icons)
          ),
          flexibleSpace: Container(
            height: double.infinity,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: darkcolor['background'],
              border: Border(
                bottom: BorderSide(width: 1, color: darkcolor['card']),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/User.png'),
                  radius: 17,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                          color: darkcolor['disabled'],
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "User Name",
                      style: TextStyle(
                          color: darkcolor['contrast'],
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: darkcolor['card'],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notifications_none,
                    color: darkcolor['contrast'],
                    size: 22,
                  ),
                ),
              ].withSpaceBetween(width: 10),
            ),
          ),
        ),
        bottomNavigationBar: Container(
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
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
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
        ),
        body: _pages.elementAt(_selectedIndex));
  }
}
