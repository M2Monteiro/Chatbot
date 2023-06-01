import 'package:chatbot/src/model/message_model.dart';
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
  bool _visible = false;
  final List<MessageModel> _messages = <MessageModel>[];
  final TextEditingController _userMessage = TextEditingController();

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
                visible: _visible,
                replacement: const InfoBodyWidget(),
                child: ListView.builder(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    left: 12.0,
                    right: 12.0,
                    bottom: 0.0,
                  ),
                  itemCount: _messages.length,
                  itemBuilder: (_, i) {
                    return Align(
                      alignment: _messages[i].messageType == 'chat' ? Alignment.centerLeft : Alignment.centerRight,
                      child: _messages[i].messageType == 'chat'
                          ? ChatMessageWidget(
                              message: _messages[i].message,
                            )
                          : UserMessageWidget(
                              message: _messages[i].message,
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
                      _visible = true;
                      _messages.add(
                        MessageModel(
                          message: _userMessage.text,
                          messageType: 'user',
                        ),
                      );

                      _userMessage.clear();

                      _messages.add(
                        MessageModel(
                          message: 'IA RESPONSE',
                          messageType: 'chat',
                        ),
                      );
                    },
                  );
                },
                voiceButton: () {},
                onSubmitted: (String text) {
                  setState(
                    () {
                      _visible = true;
                      _messages.add(
                        MessageModel(
                          message: text,
                          messageType: 'user',
                        ),
                      );

                      _userMessage.clear();

                      _messages.add(
                        MessageModel(
                          message: 'IA RESPONSE',
                          messageType: 'chat',
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
