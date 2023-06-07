import 'package:bloc/bloc.dart';
import 'package:chatbot/src/data/blocs/message_event.dart';
import 'package:chatbot/src/data/blocs/message_state.dart';
import 'package:chatbot/src/data/model/message_model.dart';
import 'package:chatbot/src/data/model/response_model.dart';
import 'package:chatbot/src/data/repository/api_repository.dart';
import 'package:chatbot/src/utils/message_type.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final _repository = ApiRepository();

  MessageBloc() : super(MessageInitialState()) {
    on(_mapEventToState);
  }

  void _mapEventToState(MessageEvent event, Emitter emit) async {
    List<MessageModel> messages = [];

    emit(MessageLoadingState());

    if (event is PostMessage) {
      String message = '';

      messages.add(
        MessageModel(
          message: event.message.message,
          type: MessageType.userType,
        ),
      );

      final ResponseModel res = await _repository.post(message: event.message.message);

      for (var choice in res.choices!) {
        message = choice.message!.content!;
      }

      messages.add(
        MessageModel(
          message: message,
          type: MessageType.assistantType,
        ),
      );
    }

    emit(MessageLoadedState(message: messages));
  }
}
