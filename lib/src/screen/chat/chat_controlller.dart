import 'package:chatbot/src/data/model/message_model.dart';
import 'package:chatbot/src/data/repository/api_repository.dart';

class ChatController {
  final ApiRepository _repository = ApiRepository();

  bool _visible = false;

  final List<MessageModel> _messages = <MessageModel>[];

  List<MessageModel> get messages => _messages;
  bool get visible => _visible;

  sendMessage(String msg) async {
    _visible = true;

    _messages.add(
      MessageModel(
        message: msg,
        messageType: 'user',
      ),
    );

    final res = await _repository.post(message: msg);

    setState() {
      _messages.add(
        MessageModel(
          message: res['choices'][0]['message']['content'],
          messageType: 'assistant',
        ),
      );
    }
  }
}
