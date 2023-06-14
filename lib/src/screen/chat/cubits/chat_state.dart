import 'package:chatbot/src/data/model/chat_model.dart';

abstract class ChatState {}

class InitialChatState extends ChatState {}

class LoadingChatState extends ChatState {
  final List<ChatModel> messages;

  LoadingChatState(this.messages);
}

class LoadedChatState extends ChatState {
  final List<ChatModel> messages;

  LoadedChatState(this.messages);
}

class ErrorChatState extends ChatState {
  final String error;

  ErrorChatState(this.error);
}
