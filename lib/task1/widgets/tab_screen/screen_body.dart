import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/utilities/extensions.dart';
import 'package:trauxit_task/task1/widgets/tab_screen/screen_body/home_body.dart';
import 'package:trauxit_task/task1/widgets/tab_screen/screen_body/profile_body.dart';

class ScreenBody extends StatelessWidget {
  const ScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 0.05.screenHeight(context),
      ),
      child: const TabBarView(
        children: [
          HomeBody(),
          ProfileBody(),
        ],
      ),
    );
  }
}
