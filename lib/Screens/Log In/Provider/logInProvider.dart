import 'package:flutter/material.dart';
import 'package:story_app_v2/Screens/Log%20In/Provider/logInState.dart';
import '../../../Core/app_routes.dart';
import 'package:email_validator/email_validator.dart';

class LogInProvider extends ChangeNotifier {
  LogInState state = LogInState();

  void verify(BuildContext context) {
    state.mailController.text = "trial";
    /* if (state.mailController.text.isNotEmpty && state.password!.isNotEmpty) {
      Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.home , (route) => false);
      // notifyListeners();
    } *  else {
      showDialog(
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
            child: const Text("Invalid input", style: TextStyle(fontSize: 25)),
          );
        },
      );
    } */
  }

  void onMailChange(String value) {
    value.isEmpty ? state.mailErrorMessage = "You must enter a mail" : EmailValidator.validate(value) ? state.mailErrorMessage = null : state.mailErrorMessage = "Enter a valid mail";
    state.mail = value;
    notifyListeners();
  }

  void onPasswordChange(String value) {
    value.isEmpty ? state.passwordErrorMessage = "You must enter a password" : state.passwordErrorMessage = null;
    state.password = value;
    notifyListeners();
  }
}