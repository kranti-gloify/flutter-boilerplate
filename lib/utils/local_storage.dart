import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  LocalStorage._();
  // get user authentication token
  static Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token') ?? '';
    return token;
  }

  static void setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }
}
