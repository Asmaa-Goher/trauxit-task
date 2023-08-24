import 'package:flutter/material.dart';

abstract class LoginRepository {
  static GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();

  static const String _email = "asmaazaki886@gmail.com";
  static const String _password = "asmaazaki123";

  static bool login() {
    if (emailController.text == _email &&
        passwordController.text == _password) {
      return true;
    }
    return false;
  }
}
