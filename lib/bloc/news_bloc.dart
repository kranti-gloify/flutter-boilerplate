import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_boilerplate/core/models/news_model.dart';
import 'package:flutter_boilerplate/core/services/news/news_services.dart';
import 'package:flutter_boilerplate/resources/strings.dart';

part 'news_events.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvents,NewsState> {
  final NewsService newsRepository;
  NewsModel? newsData;


  NewsBloc({required this.newsRepository}) : super(NewsLoadingSate()) {
    // TODO: implement 
    on<FetchNewsEvent>(fetchNews);
  }

  void fetchNews(FetchNewsEvent event,Emitter emitter) async {
    try{
        newsData= await newsRepository.fetchNews(event.pageNumber);
        emitter(NewsLoaddedState(newsData!));
      }on SocketException {
        emitter(NewsErrorState(Strings.NO_INTERNET_ALERT));
      } on HttpException {
        emitter(NewsErrorState(Strings.HTTP_ALERT));
      } on FormatException {
        emitter(NewsErrorState(Strings.FORMAT_ALERT));
      } catch(e) {
        emitter(NewsErrorState(e.toString()));
      }
  }

}