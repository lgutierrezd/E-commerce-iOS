import 'dart:convert';
import 'package:http/http.dart' as http;

enum HttpMethod { get, post, delete, patch }

class HttpRequestManager {
  //final String baseUrl = "http://192.168.100.28:3000";
  final String baseUrl = "https://silent-blend-412918.uc.r.appspot.com";
  HttpRequestManager();

  Future<dynamic> request({
    required HttpMethod method,
    required String endpoint,
    dynamic body,
  }) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    late http.Response response;

    switch (method) {
      case HttpMethod.get:
        response = await http.get(url);
        break;
      case HttpMethod.post:
        response = await http.post(
          url,
          body: jsonEncode(body),
          headers: {'Content-Type': 'application/json'},
        );
        break;
      case HttpMethod.delete:
        response = await http.delete(url);
        break;
      case HttpMethod.patch:
        response = await http.patch(
          url,
          body: jsonEncode(body),
          headers: {'Content-Type': 'application/json'},
        );
        break;
    }

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to perform ${method.toString()} request');
    }
  }
}
