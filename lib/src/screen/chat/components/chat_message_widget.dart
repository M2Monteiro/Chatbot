import 'package:chatbot/src/screen/global_widget/message_global_widget.dart';
import 'package:chatbot/src/themes/images.dart';
import 'package:flutter/material.dart';

class ChatMessageWidget extends StatelessWidget {
  final String message;
  const ChatMessageWidget({super.key, required this.message});

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
        MessageGlobalWidget(
          text: message,
          fontWeight: FontWeight.w400,
          background: const Color(0xFFE2DEDE),
          textColor: const Color(0xFF656565),
          topRight: const Radius.circular(30),
          bottomLeft: const Radius.circular(0),
        ),
      ],
    );
  }
}
