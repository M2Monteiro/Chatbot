import 'package:chatbot/src/data/blocs/message_bloc.dart';
import 'package:chatbot/src/data/blocs/message_event.dart';
import 'package:chatbot/src/data/blocs/message_state.dart';
import 'package:chatbot/src/data/model/message_model.dart';

import 'package:chatbot/src/screen/chat/components/info_body_widget.dart';
import 'package:chatbot/src/screen/chat/components/input_text_widget.dart';
import 'package:chatbot/src/screen/global_widget/custom_appbar_global_widget.dart';
import 'package:chatbot/src/screen/chat/components/chat_message_widget.dart';
import 'package:chatbot/src/screen/chat/components/user_message_widget.dart';
import 'package:chatbot/src/utils/message_type.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _userMessage = TextEditingController();

  late final MessageBloc _messageBloc;

  @override
  void initState() {
    super.initState();
    _messageBloc = MessageBloc();
    // _messageBloc.add(GetMessage());
  }

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
              BlocBuilder<MessageBloc, MessageState>(
                bloc: _messageBloc,
                builder: (context, state) {
                  if (state is MessageLoadingState) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is MessageInitialState) {
                    return const InfoBodyWidget();
                  } else if (state is MessageErrorState) {
                    return const Center(
                      child: Text('error'),
                    );
                  } else {
                    final list = state.messages;
                    return ListView.builder(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                        left: 12.0,
                        right: 12.0,
                        bottom: 0.0,
                      ),
                      itemCount: list.length,
                      itemBuilder: (_, i) {
                        return Align(
                          alignment: list[i].type == MessageType.assistantType ? Alignment.centerLeft : Alignment.centerRight,
                          child: list[i].type == MessageType.assistantType
                              ? ChatMessageWidget(
                                  message: list[i].message,
                                )
                              : UserMessageWidget(
                                  message: list[i].message,
                                ),
                        );
                      },
                    );
                  }
                },
              ),
              InputTextWidget(
                controller: _userMessage,
                sendButton: () {
                  _messageBloc.add(
                    PostMessage(
                      message: MessageModel(
                        message: _userMessage.text,
                        type: MessageType.userType,
                      ),
                    ),
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

  @override
  void dispose() {
    _messageBloc.close();
    super.dispose();
  }
}
