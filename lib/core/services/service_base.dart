import 'dart:async' show Future;
import 'package:http/http.dart' as http;

class ServiceBase {
  final String apiBaseUrl;

  static ServiceBase _singleton;

  factory ServiceBase({apiBaseUrl}) {
    _singleton ??= ServiceBase._(apiBaseUrl: apiBaseUrl);
    return _singleton;
  }

  ServiceBase._({this.apiBaseUrl});

  static String getApiBaseUrl() {
    return _singleton.apiBaseUrl;
  }

  static Future<http.Response> get({
    String url,
  }) async {
    final response = await http.get(url);
    return response;
  }
}
