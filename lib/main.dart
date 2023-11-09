import 'package:air_pay/pages/login/login.dart';
import 'package:air_pay/pages/navigation/navigation.dart';
import 'package:air_pay/pages/pin/pin.dart';
import 'package:air_pay/pages/signup/signup.dart';
import 'package:air_pay/pages/splash/splash.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
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
      home: const SplashScreen(),
      getPages: [
        GetPage(name: "/home", page: () => Navigation()),
        GetPage(name: "/login", page: () => const Login()),
        GetPage(name: "/signup", page: () => const Signup()),
        GetPage(name: "/enterpin", page: () => const EnterPin()),
      ],
    );
  }
}
