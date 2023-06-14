import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:chatbot/src/data/model/chat_model.dart';
import 'package:chatbot/src/data/repositories/chat_repository.dart';
import 'package:chatbot/src/screen/chat/cubits/chat_state.dart';
import 'package:chatbot/src/utils/message_type.dart';

class ChatCubit extends Cubit<ChatState> {
  final IChatRepository _repository;
  final List<ChatModel> _messages = [];

  List<ChatModel> get messages => _messages;

  ChatCubit(this._repository) : super(InitialChatState());

  Future<void> sendMessage({required String message}) async {
    _messages.add(ChatModel(message: message, type: MessageType.userType));
    _messages.add(ChatModel(type: MessageType.loadingType));

    emit(LoadingChatState(_messages));
    try {
      final result = await _repository.createChat(content: message);

      _messages.removeLast();

      for (var choices in result.choices!) {
        _messages.add(
          ChatModel(
            message: choices.message!.content!,
            type: MessageType.assistantType,
          ),
        );
      }

      emit(LoadedChatState(messages));
    } catch (e) {
      log(e.toString());

      emit(ErrorChatState(e.toString()));

      emit(LoadedChatState(messages));
    }
  }
}
