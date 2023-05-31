import 'package:chatbot/src/screen/chat/widget_custom/appbar_title_widget.dart';
import 'package:chatbot/src/screen/chat/widget_custom/question_body_widget.dart';

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isQuestion = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F6),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        surfaceTintColor: Colors.transparent,
        elevation: 2,
        title: const AppBarTitleWidget(),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                const QuestionBodyWidget(),
                // InfoBodyWidget(),
                Positioned(
                  width: 600,
                  bottom: 0,
                  child: Container(
                    width: 600,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 12),
                              hintText: 'Hello chatGPT, how are you today?',
                              hintStyle: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.mic,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.send_rounded,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
