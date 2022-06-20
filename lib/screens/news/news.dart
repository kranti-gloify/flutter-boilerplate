import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/bloc/news_bloc.dart';
import 'package:flutter_boilerplate/core/models/news_model.dart';
import 'package:flutter_boilerplate/routes/routes.dart';
import 'package:flutter_boilerplate/themes/colors.dart';
import 'package:flutter_boilerplate/utils/navigations.dart';
import 'package:flutter_boilerplate/widgets/common/loading_overlay/loading_overlay.dart';
import 'package:flutter_boilerplate/widgets/news/news_widget.dart';

import '../../widgets/common/error/error_widget.dart';

class News extends StatefulWidget {
  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  final bool isLoading = false;
  late NewsBloc _newsBloc;
  int index = 0;
  int page = 1;
  NewsModel? newsModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _newsBloc = BlocProvider.of<NewsBloc>(context,listen: false);
    getNewsData();
  }

  fetchNews(DismissDirection direction) {
    if (direction == DismissDirection.down) {
      if (index > 0) {
        setState(() {
          index--;
        });
      }
    } else {
      setState(() {
        index++;
      });
    }
    if (newsModel!.articles!.length - index < 15) {
      setState(() {
        page++;
      });
      _newsBloc.add(FetchNewsEvent(page));
    }
  }

  loadNewScreen() {
    Navigation.pushNamed(context, Routes.webViewScreen,{'link': newsModel!.articles![index]['url']});
  }

  getNewsData() async{
    _newsBloc.add(FetchNewsEvent(page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<NewsBloc,NewsState>(
        builder: (BuildContext contex,NewsState state) {
          if(state is NewsLoadingSate) {
            return Center(child: CircularProgressIndicator());
          }
          if(state is NewsLoaddedState) {
            newsModel = state.props[0] as NewsModel?;
            return NewsWidget(data: newsModel!,loadNewScreen: loadNewScreen,fetchNews: fetchNews,index: index,);
          }
          if(state is NewsErrorState){
            return ErrorDisplayWidget(errorMessage: state.props[0] as String);
          }
          return Container();
        },
      ),
    );
  }
}
