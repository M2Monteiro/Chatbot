import 'package:chatbot/src/data/repository/api_repository.dart';
import 'package:chatbot/src/screen/chat/chat_controlller.dart';
import 'package:chatbot/src/screen/chat/components/info_body_widget.dart';
import 'package:chatbot/src/screen/chat/components/input_text_widget.dart';
import 'package:chatbot/src/screen/global_widget/custom_appbar_global_widget.dart';
import 'package:chatbot/src/screen/chat/components/chat_message_widget.dart';
import 'package:chatbot/src/screen/chat/components/user_message_widget.dart';

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _userMessage = TextEditingController();
  final ChatController _controller = ChatController();

  final ApiRepository repository = ApiRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F6),
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 2,
        title: const CustomAppBarGlobalWidget(),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Visibility(
                visible: _controller.visible,
                replacement: const InfoBodyWidget(),
                child: ListView.builder(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    left: 12.0,
                    right: 12.0,
                    bottom: 0.0,
                  ),
                  itemCount: _controller.messages.length,
                  itemBuilder: (_, i) {
                    return Align(
                      alignment: _controller.messages[i].messageType == 'assistant' ? Alignment.centerLeft : Alignment.centerRight,
                      child: _controller.messages[i].messageType == 'assistant'
                          ? ChatMessageWidget(
                              message: _controller.messages[i].message,
                            )
                          : UserMessageWidget(
                              message: _controller.messages[i].message,
                            ),
                    );
                  },
                ),
              ),
              InputTextWidget(
                controller: _userMessage,
                sendButton: () {
                  setState(
                    () {
                      _controller.sendMessage(_userMessage.text);
                    },
                  );
                },
                voiceButton: () {},
                onSubmitted: (String text) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
