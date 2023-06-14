import 'package:chatbot/src/components/chat_screen/chat_component.dart';
import 'package:chatbot/src/components/chat_screen/input_text_component.dart';
import 'package:chatbot/src/components/chat_screen/info_body_component.dart';
import 'package:chatbot/src/screen/chat/cubits/chat_cubit.dart';
import 'package:chatbot/src/screen/chat/cubits/chat_state.dart';
import 'package:chatbot/src/components/chat_screen/custom_appbar_component.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late final ChatCubit cubit;
  final TextEditingController _userMessage = TextEditingController();

  @override
  void initState() {
    super.initState();
    cubit = BlocProvider.of<ChatCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F6),
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
        child: const CustomAppBarComponent(),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              BlocBuilder(
                bloc: cubit,
                builder: (context, state) {
                  if (state is InitialChatState) {
                    return const InfoBodyComponent();
                  } else if (state is LoadingChatState) {
                    return ChatComponent(chatList: state.messages);
                  } else if (state is LoadedChatState) {
                    return ChatComponent(chatList: state.messages);
                  } else {
                    return const Text('error');
                  }
                },
              ),
              Positioned(
                bottom: 0.0,
                child: InputTextComponent(
                  inputController: _userMessage,
                  onSubmitted: (String text) => {cubit.sendMessage(message: text)},
                  sendButton: () => cubit.sendMessage(message: _userMessage.text),
                  voiceButton: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }
}
