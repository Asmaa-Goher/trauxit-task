import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/utilities/colors.dart';
import 'package:trauxit_task/task1/utilities/extensions.dart';
import 'package:trauxit_task/task1/widgets/shared_widgets/build_text.dart';
import 'package:trauxit_task/task1/widgets/tab_screen/screen_body/profile_body/info_row.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BuildText(
          text: "In profile, I will show some info about me",
          color: AppColors.mainColor,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        0.020.screenHeight(context).sizedBoxHeight(),
        const InfoRow(title: "Name", data: "Asmaa Zaki"),
        const InfoRow(title: "Country", data: "Egypt"),
        const InfoRow(title: "Faculty", data: "FCIS"),
        const InfoRow(title: "ITI Track", data: "Cross 9-months"),
        const InfoRow(title: "Track", data: "Flutter"),
        const InfoRow(title: "Phone", data: "01012279539"),
        const InfoRow(title: "Age", data: "24"),
      ],
    );
  }
}
