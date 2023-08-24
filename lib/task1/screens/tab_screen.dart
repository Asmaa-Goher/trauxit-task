import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trauxit_task/task1/utilities/colors.dart';
import 'package:trauxit_task/task1/widgets/tab_screen/screen_body.dart';
import 'package:trauxit_task/task1/widgets/tab_screen/screen_tab_bar.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.mainDarkColor,
      ),
    );
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: screenTabBar(),
          body: const ScreenBody(),
        ),
      ),
    );
  }
}
