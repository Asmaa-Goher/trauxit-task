import 'package:flutter/material.dart';

import '../../../repositories/login_repository.dart';
import '../../shared_widgets/build_text_form_field.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return BuildTextFormField(
      controller: LoginRepository.passwordController,
      label: "Password",
      obscureText: isPasswordVisible,
      showPassword: () {
        setState(() {
          isPasswordVisible = !isPasswordVisible;
        });
      },
      validate: (data) {
        if (data == null || data.isEmpty) {
          return "Password is required";
        }
        return null;
      },
    );
  }
}
