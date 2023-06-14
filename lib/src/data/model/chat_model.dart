import 'package:chatbot/src/utils/message_type.dart';

class ChatModel {
  String? message;
  MessageType type;

  ChatModel({
    this.message,
    required this.type,
  });

  @override
  String toString() {
    return 'ChatModel(message: $message, type: $type)';
  }
}
