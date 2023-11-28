
import 'package:air_pay/extensions.dart';
import 'package:air_pay/pages/card/cardPageController.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/variables/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final String userName;
  Home({super.key, required this.userName, });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness:
              Brightness.light, // For Android (light icons)
          statusBarBrightness: Brightness.dark, // For iOS (light icons)
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
                    userName,
                    style: TextStyle(
                        color: darkcolor['contrast'],
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/notification");
                },
                child: Container(
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
              ),
            ].withSpaceBetween(width: 10),
          ),
        ),
      ),
      body: Container(
        color: darkcolor['background'],
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const MySelectedCard(),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.all(10),
                    backgroundColor: darkcolor['card'],
                    foregroundColor: darkcolor['contrast']),
                child: Row(
                  children: [
                    const Icon(Icons.credit_card),
                    const Expanded(child: Text("My Card")),
                    const Icon(Icons.arrow_forward_rounded),
                  ].withSpaceBetween(width: 10),
                ),
              ),
              Row(
                children: [
                  myActionButton(
                    onPressed: () {
                      Get.toNamed("/home/topup");
                    },
                    icon: Icons.add_card,
                    text: "Top Up",
                  ),
                  myActionButton(
                    onPressed: () {
                      Get.toNamed("/home/transfer");
                    },
                    icon: Icons.send,
                    text: "Transfer",
                  ),
                  myActionButton(
                    onPressed: () {
                      Get.toNamed("/home/withdraw");
                    },
                    icon: Icons.wallet,
                    text: "Withdraw",
                  ),
                  myActionButton(
                    onPressed: () {
                      Get.toNamed("/home/scan");
                    },
                    icon: Icons.qr_code_scanner,
                    text: "Scan",
                    backgroundColor: darkcolor['main'],
                    foregroundColor: darkcolor['contrastmain'],
                  ),
                ].withSpaceBetween(width: 10),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Latest Transaction",
                      style: TextStyle(
                          fontSize: 14, color: darkcolor['contrast'])),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "View More",
                      style:
                          TextStyle(fontSize: 10, color: darkcolor['disabled']),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: darkcolor['carddark'],
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 10,
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return myTransaction(index: index);
                  },
                  itemCount: transactionData.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: darkcolor['card'],
                      height: 25,
                    );
                  },
                ),
              ),
            ].withSpaceBetween(height: 10),
          ),
        ),
      ),
    );
  }
}

class myTransaction extends StatelessWidget {
  const myTransaction({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final String type = transactionData[index]['type'];
    return Row(
      children: [
        CircleAvatar(
          backgroundImage:
              AssetImage('assets/images/' + transactionData[index]['photo']),
          radius: 19,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(transactionData[index]['name'],
                style: TextStyle(color: darkcolor['contrast'])),
            Text(
              transactionData[index]['date'],
              style: TextStyle(fontSize: 10, color: darkcolor['disabled']),
            ),
          ],
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(transactionData[index]['value'],
                style: type == 'recieve'
                    ? TextStyle(color: darkcolor['green'])
                    : TextStyle(color: darkcolor['red'])),
            Text(
              transactionData[index]['impact'],
              style: TextStyle(fontSize: 10, color: darkcolor['disabled']),
            ),
          ],
        ),
      ].withSpaceBetween(width: 10),
    );
  }
}

class myActionButton extends StatelessWidget {
  const myActionButton({
    super.key,
    required this.onPressed,
    this.icon,
    this.text = "",
    this.backgroundColor = const Color(0xff292929),
    this.foregroundColor = const Color(0xffffffff),
  });
  final VoidCallback onPressed;
  final IconData? icon;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          padding: const EdgeInsets.symmetric(vertical: 10),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Icon(icon),
              const SizedBox(height: 5),
              Text(
                text,
                style: const TextStyle(fontSize: 12),
              )
            ].withSpaceBetween(width: 10),
          ),
        ),
      ),
    );
  }
}
