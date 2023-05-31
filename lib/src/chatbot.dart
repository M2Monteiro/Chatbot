import 'package:chatbot/src/screen/chat/chat_screen.dart';
import 'package:chatbot/src/screen/initial/initial_screen.dart';
import 'package:chatbot/src/screen/tutorial/tutorial_screen.dart';
import 'package:flutter/material.dart';

class ChatBot extends StatelessWidget {
  const ChatBot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatBot IA',
      theme: ThemeData(
        useMaterial3: true,
      ),
      // initialRoute: '/chat',
      home: const ChatScreen(),
      // routes: {
      //   '/': (context) => const InitialScreen(),
      //   '/tutorial': (context) => const TutorialScreen(),
      //   '/chat': (context) => const ChatScreen(),
      // },
    );
  }
}
