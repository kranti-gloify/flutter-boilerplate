import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter_boilerplate/core/models/news_model.dart';
import 'package:flutter_boilerplate/core/services/service_base.dart';

class NewsService {
  Future<NewsModel> fetchNews(page) async {
    String url =
        'https://newsapi.org/v2/top-headlines?page=${page ?? 1}&country=in&apiKey=8587bd9c0f864ad2b046563d2362dc1a';
    var response = await ServiceBase.get(
      url: url,
    );
    return NewsModel.fromJson(jsonDecode(response.body), response.statusCode);
  }
}
