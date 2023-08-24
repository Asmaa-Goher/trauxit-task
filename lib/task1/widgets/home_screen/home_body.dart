import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../shared_widgets/build_text.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: BuildText(
        text: "Welcome to the last page in Task1",
        fontWeight: FontWeight.bold,
        color: AppColors.mainColor,
      ),
    );
  }
}
