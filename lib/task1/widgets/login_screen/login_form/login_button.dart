import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/utilities/extensions.dart';
import 'package:trauxit_task/task1/utilities/ui_utilities.dart';
import 'package:trauxit_task/task1/widgets/shared_widgets/build_text.dart';

import '../../../repositories/login_repository.dart';
import '../../../screens/home_screen.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: .8.screenWidth(context),
      child: ElevatedButton(
          onPressed: () {
            if (LoginRepository.loginFormKey.currentState!.validate()) {
              bool result = LoginRepository.login();
              result
                  ? UiUtilities.pushReplacement(context, const HomeScreen())
                  : UiUtilities.showSnackBar(
                      txt: "Invalid user data", context: context);
            }
          },
          child: const BuildText(
            text: "Login",
            height: 1,
          )),
    );
  }
}
