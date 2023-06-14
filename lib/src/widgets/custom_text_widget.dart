import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final TextStyle? textStyle;

  const CustomTextWidget({
    super.key,
    required this.text,
    this.textAlign,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: textStyle,
    );
  }
}
