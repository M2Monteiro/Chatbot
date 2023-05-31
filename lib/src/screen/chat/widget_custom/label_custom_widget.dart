import 'package:flutter/material.dart';

class LabelCustomWidget extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry? margin;

  const LabelCustomWidget({
    super.key,
    required this.text,
    this.margin = const EdgeInsets.only(bottom: 8),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317,
      height: 40,
      alignment: Alignment.center,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(text),
    );
  }
}
