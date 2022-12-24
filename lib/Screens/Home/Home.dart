import 'package:flutter/material.dart';
import 'package:story_app_v2/Core/app_routes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.login, (route) => false),
          icon: const Icon(Icons.arrow_back),
          iconSize: 50
        )
      )
    );
  }
}