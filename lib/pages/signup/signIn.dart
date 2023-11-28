import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../home/home.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  GoogleSignInAccount? _currentUser;

  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  @override
  void initState() {
    super.initState();

    _googleSignIn.onCurrentUserChanged.listen((account) {
      setState(() {
        _currentUser = account;
      });
    });
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
      if (_currentUser != null) {
        print('Signed in user: ${_currentUser!.displayName}');
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(userName: _currentUser!.displayName ?? "User"),
          ),
        );
      }
    } catch (error) {
      print('Error signing in: $error');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GoogleSignIn"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _handleSignIn,
          child: const Text("Sign In"),
        ),
      ),
    );
  }
}
