import 'dart:convert';

import 'package:chatbot/src/data/http/exceptions.dart';
import 'package:chatbot/src/data/http/http_client.dart';
import 'package:chatbot/src/data/model/created_chat_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class IChatRepository {
  Future<CreatedChatModel> createChat({required String content});
}

class ChatRepository implements IChatRepository {
  final IHttpClient client;

  ChatRepository({required this.client});

  @override
  Future<CreatedChatModel> createChat({required String content}) async {
    final String token = dotenv.env['TOKEN']!;

    final response = await client.post(
      url: 'https://api.openai.com/v1/chat/completions',
      body: jsonEncode(
        {
          "model": "gpt-3.5-turbo",
          "messages": [
            {
              'role': 'user',
              'content': content,
            },
          ],
        },
      ),
      headers: {
        'Content-Type': 'application/json',
        'authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final body = await jsonDecode(utf8.decode(response.bodyBytes));

      return CreatedChatModel.fromMap(body);
    } else if (response.statusCode == 404) {
      throw NotFoundException('A url informada não e válida');
    } else {
      throw Exception('Não foi possível acessar a url');
    }
  }
}
