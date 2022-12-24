import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story_app_v2/Core/app_routes.dart';
import 'package:story_app_v2/Screens/Log%20In/Provider/logInProvider.dart';
import 'package:story_app_v2/Screens/Log%20In/Provider/logInState.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<LogInProvider>(
            builder: (context, provider, _) {
              return TextField(
                onChanged: context.read<LogInProvider>().onMailChange,
                decoration: InputDecoration(
                  hintText: "Mail",
                  errorText: provider.state.mailErrorMessage
                ),
                controller: provider.state.mailController
              );
            },
          ),
          const SizedBox(height: 20),
          Consumer<LogInProvider>(
            builder: (context, provider, _) {
              return TextField(
                onChanged: context.read<LogInProvider>().onPasswordChange,
                decoration: InputDecoration(
                  hintText: "Password",
                  errorText: provider.state.passwordErrorMessage
                ),
                controller: provider.state.passwordController,
              );
            },
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () => context.read<LogInProvider>().verify(context),
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 100, left: 100),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue
              ),
              child: const Text("Log In", style: TextStyle(fontSize: 25),),
            ),
          )
        ],
      ),
    );
  }
}