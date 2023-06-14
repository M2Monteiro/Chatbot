import 'package:http/http.dart' as http;

abstract class IHttpClient {
  Future post({
    required String url,
    Object? body,
    Map<String, String>? headers,
  });
}

class HttpClient implements IHttpClient {
  final client = http.Client();

  @override
  Future post({
    required String url,
    Object? body,
    Map<String, String>? headers,
  }) async {
    return await client.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
  }
}
