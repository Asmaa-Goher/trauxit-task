import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/utilities/colors.dart';

class BuildTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final IconData? postFix;
  final TextInputType? keyboard;
  final bool? obscureText;
  final String? placeholder;
  final String? Function(String?)? validate;
  final Function()? showPassword;
  final Function(String)? onChange;

  const BuildTextFormField(
      {Key? key,
      @required this.controller,
      @required this.label,
      this.postFix,
      this.keyboard,
      this.obscureText,
      this.placeholder,
      this.validate,
      this.showPassword,
      this.onChange})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 14),
      controller: controller,
      validator: validate,
      keyboardType: keyboard,
      onChanged: onChange,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: placeholder,
        label: Text(
          label!,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        filled: true,
        fillColor: AppColors.thirdColor.withOpacity(.1),
        errorBorder: InputBorder.none,
        isDense: true,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.thirdColor),
        ),
        enabledBorder: InputBorder.none,
        suffixIcon: obscureText != null
            ? InkWell(
                onTap: showPassword,
                child: Icon(
                  obscureText! ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.mainColor,
                  size: 17,
                ),
              )
            : null,
      ),
    );
  }
}
