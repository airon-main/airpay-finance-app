import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
          color: darkcolor['background'],
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  padding: const EdgeInsets.only(right: 10),
                  width: 34,
                  height: 34,
                  child: Icon(
                    Icons.arrow_back,
                    color: darkcolor['contrast'],
                    size: 22,
                  ),
                ),
              ),
              Text(
                "Notfication",
                style: TextStyle(
                  color: darkcolor['contrast'],
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: darkcolor['background'],
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: darkcolor['card'], width: 1))),
              child: const myTextField(
                labelText: "Search",
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    myNotification(
                      icon: Icon(Icons.warning, color: darkcolor['red']),
                      label: "Warning",
                      date: "1/11/2023",
                      text:
                          "Your Account just Logged on another Device.\nIf this is not you, Please change your password immediately",
                    ),
                    myNotification(
                      icon: Icon(Icons.download, color: darkcolor['blue']),
                      label: "Update",
                      date: "20/10/2023",
                      text:
                          "New Appearance Update\n • Custom Color is now available\n • Light Mode and make your eyes hurt\n • Custom Icons for those who likes to mess around",
                    ),
                    myNotification(
                      icon: Icon(Icons.attach_money, color: darkcolor['green']),
                      label: "Finance",
                      date: "1/11/2023",
                      text: "You just got Rp20,000,000 from Google LLC!",
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Read Notfication",
                            style: TextStyle(
                                fontSize: 14, color: darkcolor['contrast'])),
                      ],
                    ),
                    myNotification(
                      icon: Icon(Icons.attach_money,
                          color: darkcolor['disabled']),
                      foregroundColor: darkcolor['disabled'],
                      label: "Finance",
                      date: "1/11/2023",
                      text: "You just got Rp10,000,000 from Steam!",
                    ),
                  ].withSpaceBetween(height: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class myNotification extends StatelessWidget {
  const myNotification({
    super.key,
    this.icon = const SizedBox(),
    this.label = "",
    this.text = "",
    this.date = "",
    this.foregroundColor,
  });
  final Widget icon;
  final String label;
  final String text;
  final String date;
  final Color? foregroundColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.all(10),
        backgroundColor: darkcolor['card'],
        foregroundColor: darkcolor['contrast'],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  icon,
                  Text(label,
                      style: TextStyle(
                        color: foregroundColor ?? darkcolor['contrast'],
                        fontWeight: FontWeight.normal,
                      )),
                ].withSpaceBetween(width: 5),
              ),
              const Spacer(),
              Text(date,
                  style: TextStyle(color: darkcolor['disabled'], fontSize: 10))
            ],
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              color: foregroundColor ?? darkcolor['contrast'],
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
