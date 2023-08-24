import 'package:flutter/cupertino.dart';
import 'package:trauxit_task/task1/utilities/screen_size.dart';

extension SizedBoxExtenstion on double {
  SizedBox sizedBoxWidth() => SizedBox(
        width: this,
      );
  SizedBox sizedBoxHeight() => SizedBox(
        height: this,
      );
  SizedBox sizedBoxHW(double width) => SizedBox(
        height: this,
        width: width,
      );
}

extension ScreenSizeExtension on double {
  double screenHeight(BuildContext context) =>
      ScreenSize.getScreenHeight(context) * this;
  double screenWidth(BuildContext context) =>
      ScreenSize.getScreenWidth(context) * this;
}
