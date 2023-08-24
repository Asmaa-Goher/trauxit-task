import 'package:flutter/material.dart';

import '../../screens/login_screen.dart';
import '../../utilities/ui_utilities.dart';
import '../shared_widgets/build_text.dart';

homeAppBar(BuildContext context) {
  return AppBar(
    title: const BuildText(
      text: "Home Screen",
      height: 1,
    ),
    actions: [
      IconButton(
          onPressed: () {
            UiUtilities.pushReplacement(context, const LoginScreen());
          },
          icon: const Icon(Icons.logout))
    ],
  );
}
