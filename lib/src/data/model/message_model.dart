import 'package:chatbot/src/utils/message_type.dart';

class MessageModel {
  String message;
  MessageType type;

  MessageModel({
    required this.message,
    required this.type,
  });

  @override
  String toString() {
    return 'ChatMessageModel(message: $message, type: $type)';
  }
}
