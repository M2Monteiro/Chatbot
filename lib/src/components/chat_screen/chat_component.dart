import 'package:chatbot/src/components/chat_screen/chat_gpt_message_component.dart';
import 'package:chatbot/src/components/chat_screen/message_component.dart';
import 'package:chatbot/src/data/model/chat_model.dart';
import 'package:chatbot/src/utils/message_type.dart';
import 'package:flutter/material.dart';

class ChatComponent extends StatelessWidget {
  final List<ChatModel> chatList;

  const ChatComponent({super.key, required this.chatList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 12.0,
        right: 12.0,
        bottom: 0.0,
      ),
      itemCount: chatList.length,
      itemBuilder: (_, i) {
        return Align(
          alignment: chatList[i].type == MessageType.loadingType || chatList[i].type == MessageType.assistantType
              ? Alignment.centerLeft
              : Alignment.centerRight,
          child: chatList[i].type == MessageType.loadingType
              ? const ChatGptMessageComponent(chatText: '* * *')
              : chatList[i].type == MessageType.assistantType
                  ? ChatGptMessageComponent(chatText: chatList[i].message!)
                  : MessageComponent(text: chatList[i].message!),
        );
      },
    );
  }
}
