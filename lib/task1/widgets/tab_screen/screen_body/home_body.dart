import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/utilities/colors.dart';
import 'package:trauxit_task/task1/utilities/extensions.dart';
import 'package:trauxit_task/task1/widgets/shared_widgets/build_text.dart';
import 'package:trauxit_task/task1/widgets/tab_screen/screen_body/home_body/home_row.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const BuildText(
            text: "First Task",
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          0.020.screenHeight(context).sizedBoxHeight(),
          const BuildText(
            text: "Hello, This is the home page"
                "\nof the first task of mid developers.\n"
                "In this task we just make tab bar\n which consists of two tabs.",
            fontWeight: FontWeight.bold,
            color: AppColors.mainColor,
            height: 2,
          ),
          0.025.screenHeight(context).sizedBoxHeight(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HomeRow(icon: Icons.home, text: "Home Page"),
              0.03.screenWidth(context).sizedBoxWidth(),
              const HomeRow(icon: Icons.person, text: "Profile Page"),
            ],
          ),
        ],
      ),
    );
  }
}
