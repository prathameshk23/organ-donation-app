import 'package:flutter/material.dart';
import 'package:organ_donation_app/pages/login_page.dart';
import 'package:organ_donation_app/pages/sign_up.dart';

class AuthPagr extends StatefulWidget {
  const AuthPagr({super.key});

  @override
  State<AuthPagr> createState() => _AuthPagrState();
}

class _AuthPagrState extends State<AuthPagr> {
  bool showLoginPage = true;

  void toggleScreens () {
    setState(() {
      showLoginPage =! showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showSignUpPage: toggleScreens);
    } else {
      return SignUpPage(showLoginPage: toggleScreens);
    }
  }
}
