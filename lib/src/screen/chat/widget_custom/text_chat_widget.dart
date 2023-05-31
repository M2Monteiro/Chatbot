import 'package:flutter/material.dart';

class TextChatWidget extends StatelessWidget {
  final String text;
  final Color background, textColor;
  final FontWeight fontWeight;
  final Radius topLeft, topRight, bottomLeft, bottomRight;

  const TextChatWidget({
    required this.text,
    this.background = Colors.blue,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.w700,
    this.topLeft = const Radius.circular(30),
    this.topRight = const Radius.circular(0),
    this.bottomLeft = const Radius.circular(30),
    this.bottomRight = const Radius.circular(30),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.only(
          topLeft: topLeft,
          topRight: topRight,
          bottomLeft: bottomLeft,
          bottomRight: bottomRight,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: fontWeight,
          fontSize: 14,
        ),
      ),
    );
  }
}
