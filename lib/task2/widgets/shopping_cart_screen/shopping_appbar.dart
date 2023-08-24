import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trauxit_task/task2/widgets/shopping_cart_screen/shopping_appbar/appbar_action_cart.dart';

import '../../utilities/colors.dart';
import '../shared_widgets/build_text.dart';

shoppingAppBar(BuildContext context) {
  return AppBar(
    title: const BuildText(
      text: "Shopping",
      color: App2Colors.secondColor,
    ),
    actions: const [AppbarActionCart()],
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).scaffoldBackgroundColor,
        statusBarIconBrightness: Brightness.dark),
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    elevation: .5,
  );
}
