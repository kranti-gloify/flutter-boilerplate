import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter_boilerplate/core/models/news_model.dart';
import 'package:flutter_boilerplate/core/services/service_base.dart';

class NewsService {
  Future<NewsModel> fetchNews() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=in&apiKey=f8c15ba22b0b4ec08dd9f84c3480d709';
    var response = await ServiceBase.get(
      url: url,
    );
    return NewsModel.fromJson(jsonDecode(response.body), response.statusCode);
  }
}
