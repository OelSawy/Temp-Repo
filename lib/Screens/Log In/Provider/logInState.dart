import 'package:flutter/cupertino.dart';
import 'package:story_app_v2/Screens/Log%20In/LogIn.dart';

class LogInState {
  String? mail;
  String? password;
  String? mailErrorMessage;
  String? passwordErrorMessage;
  TextEditingController mailController = TextEditingController(text: "Maiiiiiiil");
  TextEditingController passwordController = TextEditingController(text: "Paaaaaassss");
}