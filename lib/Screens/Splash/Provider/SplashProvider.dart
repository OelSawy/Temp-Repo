import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:story_app_v2/Screens/Splash/Provider/SplashState.dart';

import '../../../Core/app_routes.dart';

class SplashProvider extends ChangeNotifier {
  SplashState state = SplashState();

  Future<void> handleDate(context) async {
    await Future.delayed(const Duration(seconds: 2)).then((value) => Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.login, (route) => false));
  }
}