import 'dart:async' show Future;
import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_boilerplate/resources/strings.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_http.dart';

//service base class along with all the required methods & base url of all the end-points services will be mentioned here.
class ServiceBase {
  static String apiBaseUrl = ''; //production base url

  static Future<http.Response> get({
    String? url,
    String? baseUrl = '',
    required Map<String, String> headers,
  }) async {
    var netWorkStatus = await checkConnectionStatus();
    if (netWorkStatus) {
      String apiUrl = (baseUrl!.isEmpty ? apiBaseUrl : baseUrl) + url!;
      final response = await InterceptedHttp.build(interceptors: [])
          .get(Uri.parse(apiUrl), headers: headers);

      return response;
    }
    throw Strings.noInternetAlert;
  }

  static Future<http.Response> post({
    String? url,
    required Map data,
    String baseUrl = '',
    required Map<String, String> headers,
  }) async {
    var netWorkStatus = await checkConnectionStatus();
    if (netWorkStatus) {
      String apiUrl = apiBaseUrl + url!;
      final response = await InterceptedHttp.build(interceptors: [])
          .post(Uri.parse(apiUrl), body: jsonEncode(data), headers: headers);

      return response;
    }
    throw Strings.noInternetAlert;
  }

  static Future<http.Response> delete({
    String? url,
    required Map data,
    String baseUrl = '',
    required Map<String, String> headers,
  }) async {
    var netWorkStatus = await checkConnectionStatus();
    if (netWorkStatus) {
      String apiUrl = apiBaseUrl + url!;
      final response = await InterceptedHttp.build(interceptors: [])
          .delete(Uri.parse(apiUrl), body: jsonEncode(data), headers: headers);

      return response;
    }
    throw Strings.noInternetAlert;
  }

  static Future<http.Response> postWithoutParams({
    String? url,
    String baseUrl = '',
    required Map<String, String> headers,
  }) async {
    var netWorkStatus = await checkConnectionStatus();
    if (netWorkStatus) {
      String apiUrl = apiBaseUrl + url!;
      final response = await InterceptedHttp.build(interceptors: [])
          .post(Uri.parse(apiUrl), headers: headers);

      return response;
    }
    throw Strings.noInternetAlert;
  }

  static Future<http.Response> put({
    String? url,
    required Map data,
    String baseUrl = '',
    required Map<String, String> headers,
  }) async {
    var netWorkStatus = await checkConnectionStatus();
    if (netWorkStatus) {
      String apiUrl = apiBaseUrl + url!;
      final response = await InterceptedHttp.build(interceptors: [])
          .put(Uri.parse(apiUrl), body: jsonEncode(data), headers: headers);

      return response;
    }
    throw Strings.noInternetAlert;
  }

  static Future<http.Response> callMultipartRequest(
    String keyName, {
    required String url,
    required String type,
    String? filePath,
    required Map<String, String> headers,
    required Map<String, String> fields,
  }) async {
    var netWorkStatus = await checkConnectionStatus();
    if (netWorkStatus) {
      String apiUrl = ServiceBase.apiBaseUrl + url;
      var request = http.MultipartRequest(type, Uri.parse(apiUrl));
      var multipartFile = await http.MultipartFile.fromPath(keyName, filePath!);
      request.headers.addAll(headers);
      request.fields.addAll(fields);
      request.files.add(multipartFile);
      var streamResponse = await request.send();
      var res = await http.Response.fromStream(streamResponse);

      return res;
    }
    throw Strings.noInternetAlert;
  }
}

checkConnectionStatus() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}
