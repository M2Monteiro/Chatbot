import 'package:chatbot/src/screen/global_widget/message_global_widget.dart';
import 'package:flutter/material.dart';

class UserMessageWidget extends StatelessWidget {
  final String message;
  const UserMessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return MessageGlobalWidget(
      text: message,
    );
  }
}
