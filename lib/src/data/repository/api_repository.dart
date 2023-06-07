import 'dart:convert';
import 'package:chatbot/src/data/model/response_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class IHttpClient {
  Future<ResponseModel> post({required String message});
}

class ApiRepository implements IHttpClient {
  @override
  Future<ResponseModel> post({required String message}) async {
    final String token = dotenv.env['TOKEN']!;
    const String url = 'https://api.openai.com/v1/chat/completions';

    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
    };

    final body = jsonEncode(
      {
        "model": "gpt-3.5-turbo",
        "messages": [
          {
            'role': 'user',
            'content': message,
          },
        ],
      },
    );

    try {
      final resp = await http.post(
        Uri.parse(url),
        body: body,
        headers: headers,
      );

      return ResponseModel.fromJson(jsonDecode(utf8.decode(resp.bodyBytes)));
    } catch (e) {
      return ResponseModel();
    }
  }
}
