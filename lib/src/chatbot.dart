import 'package:chatbot/src/data/http/http_client.dart';
import 'package:chatbot/src/data/repositories/chat_repository.dart';
import 'package:chatbot/src/screen/chat/chat_screen.dart';
import 'package:chatbot/src/screen/chat/cubits/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBot extends StatelessWidget {
  const ChatBot({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(
        ChatRepository(
          client: HttpClient(),
        ),
      ),
      child: MaterialApp(
        title: 'ChatBot IA',
        theme: ThemeData(
          useMaterial3: true,
        ),
        initialRoute: '/chat',
        routes: {
          // '/': (context) => const InitialScreen(),
          // '/tutorial': (context) => const TutorialScreen(),
          '/chat': (context) => const ChatScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
