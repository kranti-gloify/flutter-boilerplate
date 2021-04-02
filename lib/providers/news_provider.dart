import 'dart:async' show Future;
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/core/models/news_model.dart';
import 'package:flutter_boilerplate/core/services/news/news_services.dart';

class NewsProvider extends ChangeNotifier {
  bool isLoading = true;
  NewsModel newsData;

  void changeLoadingStatus(bool loading) {
    new Future.delayed(new Duration(milliseconds: 300), () {
      isLoading = loading;
      notifyListeners();
    });
  }

  void fetchNews(page) async {
    final NewsModel response = await NewsService().fetchNews(page);
    if (newsData != null && newsData.articles != null) {
      newsData.articles.addAll(response.articles);
    } else {
      newsData = response;
    }
    isLoading = false;
    notifyListeners();
  }
}
