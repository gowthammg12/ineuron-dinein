import 'package:dinein/metadata/styles.dart';
import 'package:dinein/metadata/text_style.dart';
import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextStyle? hintTextStyle;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final String? hintText;
  final Function(String)? onChanged;
  final int? maxLines;

  const LoginTextField({
    Key? key,
    this.hintTextStyle = AppTextStyles.textFieldHintStyle,
    this.enabledBorder = AppStyles.enabledBorder,
    this.border = AppStyles.border,
    this.hintText,
    this.onChanged,
    this.controller,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintTextStyle,
        enabledBorder: enabledBorder,
        border: border,
      ),
      maxLines: maxLines,
      onChanged: onChanged,
    );
  }
}
