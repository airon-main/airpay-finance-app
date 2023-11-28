import 'package:air_pay/boxes.dart';
import 'package:air_pay/extensions.dart';
import 'package:air_pay/hive/controllers/AccountController.dart';
import 'package:air_pay/hive/user.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AccountController accountController = AccountController();
    final user = boxUser.get("myUser") as User;
    TextEditingController usernameController =
        TextEditingController(text: user.username);
    TextEditingController imagePathController =
        TextEditingController(text: user.image);
    TextEditingController emailController =
        TextEditingController(text: user.email);
    return Scaffold(
      appBar: myAppBar(
        title: "Account Information",
        // borderColor: Colors.transparent, //* menghilangkan border bottom
        //* Penggunaan jika ada tombol back, masukkan ke gesture detector kalau mau ada logic get.back
        prefixWidget: GestureDetector(
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
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: darkcolor['background']),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      colorFilter: ColorFilter.mode(
                        Colors.black38,
                        BlendMode.darken,
                      ),
                      image: AssetImage("assets/images/User.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              myTextField(
                labelText: "Avatar Path",
                controller: imagePathController,
              ),
              myTextField(
                labelText: "Username",
                controller: usernameController,
              ),
              myTextField(
                labelText: "Email",
                controller: emailController,
              ),
              myButton(
                onClick: () {
                  Get.toNamed("/user/changepass");
                },
                text: "Change Password",
                textAlign: TextAlign.center,
                backgroundColor: darkcolor['card'],
                foregroundColor: darkcolor['contrast'],
              ),
              myButton(
                onClick: () {},
                text: "Change",
                textAlign: TextAlign.center,
                backgroundColor: darkcolor['main'],
                foregroundColor: darkcolor['contrastmain'],
              ),
              Text(
                'AirPay Id : ${user.airpayId}',
                style: TextStyle(color: darkcolor['disabled']),
              )
            ].withSpaceBetween(height: 10),
          ),
        ),
      ),
    );
  }
}
