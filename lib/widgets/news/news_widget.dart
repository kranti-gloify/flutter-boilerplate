import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/routes/routes.dart';
import 'package:flutter_boilerplate/themes/colors.dart';
import 'package:flutter_boilerplate/utils/navigations.dart';

class NewsWidget extends StatefulWidget {
  final data;
  final Function getNews;
  final bool isLoading;

  const NewsWidget({
    this.data,
    @required this.getNews,
    @required this.isLoading,
  });

  @override
  _NewsWidgetState createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  int index = 0;
  int page = 1;
  @override
  void initState() {
    super.initState();
    widget.data ?? widget.getNews(page);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.data != null) {
      return new Dismissible(
        key: Key(index.toString()),
        direction: index > 0 ? DismissDirection.vertical : DismissDirection.up,
        onDismissed: (direction) {
          print(direction == DismissDirection.up);
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
          if (widget.data.articles.length - index < 15) {
            setState(() {
              page++;
            });
            widget.getNews(page++);
          }
        },
        child: new GestureDetector(
          onPanUpdate: (d) {
            if (d.delta.direction > 0) {
              Navigation.pushNamed(context, Routes.webViewScreen,
                  {'link': widget.data.articles[index]['url']});
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
                child: widget.data.articles[index]['urlToImage'] != null
                    ? new Image.network(
                        widget.data.articles[index]['urlToImage'],
                        fit: BoxFit.fill,
                      )
                    : null,
              ),
              new Padding(
                padding: new EdgeInsets.all(20),
                child: new Text(
                  widget.data.articles[index]['title'],
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              new Expanded(
                child: new Padding(
                    padding: new EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: new SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: new Text(
                        widget.data.articles[index]['description'],
                        style: Theme.of(context).textTheme.subtitle1,
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
                        'Source: ${widget.data.articles[index]["source"]["name"]}',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      new Text(
                        'Swip left for read more >',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return Container(
        child: !widget.isLoading
            ? Center(
                child: Text(
                  'Something went wrong!',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              )
            : null,
      );
    }
  }
}
