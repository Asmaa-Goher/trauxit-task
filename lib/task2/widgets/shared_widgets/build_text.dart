import 'package:flutter/material.dart';

class BuildText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? height;
  final TextAlign? textAlign;
  const BuildText(
      {super.key,
      required this.text,
      this.color,
      this.fontWeight,
      this.fontSize,
      this.height,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          height: height ?? 1.8),
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}
