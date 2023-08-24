import 'package:flutter/material.dart';

import '../../../repositories/login_repository.dart';
import '../../shared_widgets/build_text_form_field.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BuildTextFormField(
      controller: LoginRepository.emailController,
      label: "Email",
      validate: (data) {
        if (data == null || data.isEmpty) {
          return "Email is required";
        }
        return null;
      },
    );
  }
}
