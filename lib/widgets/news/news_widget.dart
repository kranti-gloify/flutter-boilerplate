import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/models/news_model.dart';
import 'package:flutter_boilerplate/themes/colors.dart';
class NewsWidget extends StatelessWidget {

  final NewsModel data;
  final Function loadNewScreen;
  final int index;
  final Function fetchNews;


  NewsWidget({
    required this.data,
    required this.loadNewScreen,
    required this.fetchNews,
    required this.index
  });
  
  @override
  Widget build(BuildContext context) {
    return new Dismissible(
        key: Key(index.toString()),
        direction: index > 0 ? DismissDirection.vertical : DismissDirection.up,
        onDismissed: (direction) {
          print("rahul");
          fetchNews(direction);
        },
        child: new GestureDetector(
          onPanUpdate: (d) {
            if (d.delta.direction > 0) {
              loadNewScreen();
            }
          },
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.gray,
                      AppColors.primaryLight,
                      AppColors.gray
                    ],
                    begin: FractionalOffset(0, 0),
                  ),
                ),
                height: 240,
                child: data.articles![index]['urlToImage'] != null
                    ? new Image.network(
                        data.articles![index]['urlToImage'],
                        fit: BoxFit.fill,
                      )
                    : null,
              ),
              new Padding(
                padding: new EdgeInsets.all(20),
                child: new Text(
                  data.articles![index]['title'],
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              new Expanded(
                child: new Padding(
                    padding: new EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: new SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: new Text(
                        data.articles![index]['description'] != null ? data.articles![index]['description'] : '',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    )),
              ),
              new Expanded(
                child: new Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Text(
                        'Source: ${data.articles![index]["source"]["name"]}',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      new Text(
                        'Swip left for read more >',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
  
}