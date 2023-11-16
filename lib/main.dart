import 'package:air_pay/pages/card/addCardPage.dart';
import 'package:air_pay/pages/login/login.dart';
import 'package:air_pay/pages/navigation/navigation.dart';
import 'package:air_pay/pages/home/scan/scan.dart';
import 'package:air_pay/pages/pin/pin.dart';
import 'package:air_pay/pages/shop/Payment%20Page/electricPage.dart';
import 'package:air_pay/pages/shop/Payment%20Page/topupPage.dart';
import 'package:air_pay/pages/shop/shop.dart';
import 'package:air_pay/pages/signup/signup.dart';
import 'package:air_pay/pages/splash/splash.dart';
import 'package:air_pay/pages/user/detail/aboutus.dart';
import 'package:air_pay/pages/user/detail/accountInformation.dart';
import 'package:air_pay/pages/user/detail/appearance.dart';
import 'package:air_pay/pages/user/detail/cache.dart';
import 'package:air_pay/pages/user/detail/setting.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: darkcolor['main']),
        useMaterial3: true,
      ),
      home: const AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
        ),
        child: SplashScreen(),
      ),
      getPages: [
        GetPage(name: "/home", page: () => Navigation()),
        GetPage(name: "/home/scan", page: () => const Scan()),
        GetPage(name: "/login", page: () => const Login()),
        GetPage(name: "/signup", page: () => const Signup()),
        GetPage(name: "/enterpin", page: () => const EnterPin()),
        //* User Pages
        GetPage(name: "/user/account", page: () => const Account()),
        GetPage(name: "/user/appearance", page: () => const Appearance()),
        GetPage(name: "/user/setting", page: () => const Setting()),
        GetPage(name: "/user/cache", page: () => const Cache()),
        GetPage(name: "/user/about", page: () => const aboutUsPage()),
        //* Card Pages
        GetPage(name: "/card/addcard", page: () => const addCardPage()),
        //*
        GetPage(name: "/shop/homeshop", page: () => const ShoppingPage()),
        GetPage(name: "/shop/topup", page: () => const buyPage()),
        GetPage(name: "/shop/token", page: () => const electricPage()),
      ],
    );
  }
}
