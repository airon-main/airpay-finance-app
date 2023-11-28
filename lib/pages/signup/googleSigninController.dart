import 'package:get/get.dart';
import 'package:air_pay/hive/controllers/AccountController.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSigninController extends GetxController {
  GoogleSignInAccount? currentUser;
  AccountController accountController = AccountController();

  Future<void> handleSignIn() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: [
          'email',
          'https://www.googleapis.com/auth/contacts.readonly',
        ],
      );
      googleSignIn.onCurrentUserChanged.listen((account) {
        currentUser = account;
      });
      await googleSignIn.signIn();
      if (currentUser != null) {
        print('Signed in user: ${currentUser!.displayName}');
        accountController.goToPin(
          username: currentUser!.displayName!,
          email: currentUser!.email,
          password: "123",
          reenterPassword: "123",
        );
      }
    } catch (error) {
      print('Error signing in: $error');
    }
  }
}
