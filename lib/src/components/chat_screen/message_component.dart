import 'package:chatbot/src/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class MessageComponent extends StatelessWidget {
  final String text;
  final bool isAvatar;
  final Color background, textColor;
  final FontWeight fontWeight;
  final Radius topLeft, topRight, bottomLeft, bottomRight;

  const MessageComponent({
    super.key,
    required this.text,
    this.isAvatar = false,
    this.background = Colors.blue,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.w700,
    this.topLeft = const Radius.circular(30),
    this.topRight = const Radius.circular(0),
    this.bottomLeft = const Radius.circular(30),
    this.bottomRight = const Radius.circular(30),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 280,
      ),
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
      child: CustomTextWidget(
        text: text,
        textStyle: TextStyle(
          color: textColor,
          fontWeight: fontWeight,
          fontSize: 14,
        ),
      ),
    );
  }
}
