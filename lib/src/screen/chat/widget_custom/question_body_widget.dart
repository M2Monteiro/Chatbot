import 'package:chatbot/src/screen/chat/widget_custom/text_chat_widget.dart';
import 'package:chatbot/src/themes/images.dart';
import 'package:flutter/material.dart';

class QuestionBodyWidget extends StatefulWidget {
  const QuestionBodyWidget({super.key});

  @override
  State<QuestionBodyWidget> createState() => _QuestionBodyWidgetState();
}

class _QuestionBodyWidgetState extends State<QuestionBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 12.0,
        right: 12.0,
        bottom: 0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const TextChatWidget(
            text: 'Hello chatGPT, how are you today?',
          ),
          Row(
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
              const TextChatWidget(
                text:
                    'There are many programming languages ​​in the market that are used in designing and building websites, various applications and other tasks. All these languages ​​are popular in their place and in the way they are used, and many programmers learn and use them.',
                fontWeight: FontWeight.w400,
                background: Color(0xFFE2DEDE),
                textColor: Color(0xFF656565),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
