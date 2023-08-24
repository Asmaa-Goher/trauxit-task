import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/utilities/extensions.dart';
import 'package:trauxit_task/task1/widgets/shared_widgets/build_text.dart';

import '../../../../utilities/colors.dart';

class InfoRow extends StatelessWidget {
  final String title;
  final String data;
  const InfoRow({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        0.020.screenWidth(context),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.label_important_outlined,
            size: 15,
            color: AppColors.mainColor,
          ),
          BuildText(
            text: title,
            height: 1,
            color: AppColors.mainColor,
            fontWeight: FontWeight.bold,
          ),
          0.02.screenWidth(context).sizedBoxWidth(),
          const Icon(Icons.arrow_right),
          BuildText(
            text: data,
            height: 1,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          )
        ],
      ),
    );
  }
}
