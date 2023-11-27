import 'package:air_pay/boxes.dart';
import 'package:air_pay/hive/cards.dart';
import 'package:air_pay/hive/user.dart';
import 'package:air_pay/pages/card/addCardPage.dart';
import 'package:air_pay/pages/home/scan/selectNominalScan.dart';
import 'package:air_pay/pages/card/cardPageController.dart';
import 'package:air_pay/pages/home/topup/selectNominalTopup.dart';
import 'package:air_pay/pages/home/topup/topup.dart';
import 'package:air_pay/pages/home/transfer/transfer.dart';
import 'package:air_pay/pages/home/transfer/selectNominalTransfer.dart';
import 'package:air_pay/pages/home/withdraw/selectNominalWithdraw.dart';
import 'package:air_pay/pages/home/withdraw/withdraw.dart';
import 'package:air_pay/pages/navigation/navigation.dart';
import 'package:air_pay/pages/home/scan/scan.dart';
import 'package:air_pay/pages/navigation/navigationController.dart';
import 'package:air_pay/pages/notification/notification.dart';
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
import 'package:air_pay/pages/user/detail/changepass.dart';
import 'package:air_pay/pages/user/detail/setting.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(MyCardAdapter());
  boxUser = await Hive.openBox<User>('userBox');
  boxCard = await Hive.openBox<List>('cardBox');
  // boxTranscation = await Hive.openBox<Transaction>('transactionBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


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
        GetPage(name: "/signup", page: () => const Signup()),
        GetPage(name: "/enterpin", page: () => const EnterPin()),
        GetPage(name: "/notification", page: () => const NotificationPage()),
        //* Home Pages
        GetPage(
          name: "/home",
          page: () => Navigation(),
          binding: BindingsBuilder(
            () {
              Get.put(CardPageController());
              Get.put(NavigationController());
            },
          ),
        ),
        GetPage(name: "/home/scan", page: () => const ScanPage()),
        GetPage(name: "/home/topup", page: () => const TopupPage()),
        GetPage(name: "/home/transfer", page: () => const TransferPage()),
        GetPage(name: "/home/withdraw", page: () => const WithdrawPage()),

        GetPage(name: "/home/selectNominalTopup", page: () => const selectNominalTopup()),
        GetPage(name: "/home/selectNominalTransfer", page: () => const selectNominalTransfer()),
        GetPage(name: "/home/selectNominalWithdraw", page: () => const selectNominalWithdraw()),
        GetPage(name: "/home/selectNominalScan", page: () => const selectNominalScan()),

        GetPage(
            name: "/home/selectNominalTopup",
            page: () => const selectNominalTopup()),
        GetPage(
            name: "/home/selectNominalTransfer",
            page: () => const selectNominalTransfer()),
        GetPage(
            name: "/home/selectNominalWithdraw",
            page: () => const selectNominalWithdraw()),
        //* Shop Pages
        GetPage(name: "/shop/homeshop", page: () => const ShoppingPage()),
        GetPage(name: "/shop/topup", page: () => const buyPage()),
        GetPage(name: "/shop/token", page: () => const electricPage()),
        //* Card Pages
        GetPage(name: "/card/addcard", page: () => const addCardPage()),
        //* User Pages
        GetPage(name: "/user/account", page: () => const Account()),
        GetPage(name: "/user/changepass", page: () => const ChangePassPage()),
        GetPage(name: "/user/appearance", page: () => const Appearance()),
        GetPage(name: "/user/setting", page: () => const Setting()),
        GetPage(name: "/user/cache", page: () => const Cache()),
        GetPage(name: "/user/about", page: () => const aboutUsPage()),
      ],
    );
  }
}
