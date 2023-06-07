import 'package:chatbot/src/data/model/message_model.dart';

abstract class MessageState {
  final List<MessageModel> messages;
  MessageState({required this.messages});
}

class MessageInitialState extends MessageState {
  MessageInitialState() : super(messages: []);
}

class MessageLoadingState extends MessageState {
  MessageLoadingState() : super(messages: []);
}

class MessageLoadedState extends MessageState {
  MessageLoadedState({required List<MessageModel> message}) : super(messages: message);
}

class MessageErrorState extends MessageState {
  final Exception exception;
  MessageErrorState({required this.exception}) : super(messages: []);
}
