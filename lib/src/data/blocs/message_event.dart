import 'package:chatbot/src/data/model/message_model.dart';

abstract class MessageEvent {}

class PostMessage extends MessageEvent {
  final MessageModel message;

  PostMessage({required this.message});
}
