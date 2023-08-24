import 'package:flutter/material.dart';

import '../../utilities/colors.dart';

PreferredSize screenTabBar() {
  TabBar tabBar = const TabBar(
    indicatorColor: AppColors.mainDarkColor,
    indicatorWeight: 3,
    tabs: [
      Tab(
        text: "Home",
      ),
      Tab(
        text: "Profile",
      ),
    ],
  );

  return PreferredSize(
    preferredSize: tabBar.preferredSize,
    child: ColoredBox(
      color: AppColors.mainColor,
      child: tabBar,
    ),
  );
}
