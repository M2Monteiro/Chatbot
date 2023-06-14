import 'package:chatbot/src/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class InfoTextComponent extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry? margin;

  const InfoTextComponent({
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
      child: CustomTextWidget(text: text),
    );
  }
}
