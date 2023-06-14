import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController textFieldController;
  final void Function(String)? onSubmitted;
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.textFieldController,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textFieldController,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        hintStyle: const TextStyle(
          color: Colors.blue,
        ),
      ),
    );
  }
}
