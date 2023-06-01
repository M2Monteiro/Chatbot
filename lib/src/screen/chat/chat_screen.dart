import 'package:chatbot/src/screen/chat/widget_custom/appbar_title_widget.dart';
import 'package:chatbot/src/screen/chat/widget_custom/info_body_widget.dart';
import 'package:chatbot/src/screen/chat/widget_custom/question_body_widget.dart';

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isQuestion = false;
  final TextEditingController _userQuestion = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F6),
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 2,
        title: const AppBarTitleWidget(),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    isQuestion
                        ? QuestionBodyWidget(
                            userQuestion: _userQuestion.text,
                          )
                        : const InfoBodyWidget(),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: 56,
                  margin: const EdgeInsets.only(bottom: 22),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _userQuestion,
                            decoration: const InputDecoration(
                              hintText: 'Write your message',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isQuestion = false;
                                });
                              },
                              icon: Icon(
                                Icons.mic,
                                color: Colors.grey[600],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isQuestion = true;
                                });
                              },
                              icon: const Icon(
                                Icons.send_rounded,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
