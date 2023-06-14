// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:chatbot/src/themes/images.dart';
import 'package:chatbot/src/widgets/custom_text_widget.dart';

class ChatGptMessageComponent extends StatelessWidget {
  final String chatText;
  const ChatGptMessageComponent({
    Key? key,
    required this.chatText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 30,
          height: 30,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 30,
                offset: Offset(1, 2),
              )
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            width: 10,
            AppImagens.mascotMini,
          ),
        ),
        Container(
          constraints: const BoxConstraints(
            maxWidth: 280,
          ),
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
          decoration: const BoxDecoration(
            color: Color(0xFFE2DEDE),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: CustomTextWidget(
            text: chatText,
            textStyle: const TextStyle(
              color: Color(0xFF656565),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
