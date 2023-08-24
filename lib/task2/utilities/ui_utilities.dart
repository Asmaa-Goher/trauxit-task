import 'package:flutter/material.dart';

import '../widgets/shared_widgets/build_text.dart';

class UiUtilities {
  static void showSnackBar(
      {required String txt, required BuildContext context}) {
    SnackBar snackBar = SnackBar(
      content: BuildText(
        height: 1,
        text: txt,
        fontSize: 13.5,
        color: Colors.white,
      ),
      backgroundColor: Colors.black87,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void push(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }

  static void pop(BuildContext context) {
    Navigator.of(context).pop();
  }

  static void pushReplacement(BuildContext context, Widget screen) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => screen));
  }
}
