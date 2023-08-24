import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/repositories/login_repository.dart';
import 'package:trauxit_task/task1/utilities/extensions.dart';
import 'package:trauxit_task/task1/widgets/login_screen/login_form/email_text_field.dart';
import 'package:trauxit_task/task1/widgets/login_screen/login_form/login_button.dart';
import 'package:trauxit_task/task1/widgets/login_screen/login_form/password_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: .8.screenWidth(context),
      child: LayoutBuilder(
        builder: (context, constrains) {
          double spaceRatio = constrains.minHeight * .1;
          return Form(
              key: LoginRepository.loginFormKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    spaceRatio.sizedBoxHeight(),
                    const EmailTextField(),
                    spaceRatio.sizedBoxHeight(),
                    const PasswordTextField(),
                    spaceRatio.sizedBoxHeight(),
                    const LoginButton()
                  ],
                ),
              ));
        },
      ),
    );
  }
}
