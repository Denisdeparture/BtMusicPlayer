import 'dart:convert';
import 'dart:io';


class JsonValidator{
  static Future<String?> ParseJson(HttpClientResponse response) async {
    String? jsonAnswer;
    jsonAnswer = await response.transform(utf8.decoder).join();
    if(jsonAnswer == null) throw new Exception("json was null");
    return jsonAnswer;
  }
}