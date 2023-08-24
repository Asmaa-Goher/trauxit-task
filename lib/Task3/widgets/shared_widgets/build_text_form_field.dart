import 'package:flutter/material.dart';

import '../../utilities/colors.dart';

class BuildTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? placeholder;
  final Function(String)? onChange;

  const BuildTextFormField({
    Key? key,
    @required this.controller,
    @required this.label,
    this.placeholder,
    this.onChange,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      style: const TextStyle(fontSize: 14, color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: placeholder,
        label: Text(
          label!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        filled: true,
        fillColor: App3Colors.thirdColor.withOpacity(.1),
        isDense: true,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: App3Colors.mainColor),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: App3Colors.mainColor),
        ),
      ),
    );
  }
}
