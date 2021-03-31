import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/themes/themes.dart';

class NewsWidget extends StatefulWidget {
  final data;
  final Function getNews;

  const NewsWidget({
    this.data,
    @required this.getNews,
  });

  @override
  _NewsWidgetState createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  int index = 0;
  @override
  void initState() {
    super.initState();
    widget.getNews();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.data != null) {
      return new Dismissible(
        key: Key(index.toString()),
        direction: DismissDirection.vertical,
        onDismissed: (direction) {
          setState(() {
            index++;
          });
        },
        child: new Column(
          children: <Widget>[
            new Image.network(
              widget.data.articles[index]['urlToImage'],
              fit: BoxFit.contain,
            ),
            new Padding(
              padding: new EdgeInsets.all(20),
              child: new Text(
                widget.data.articles[index]['title'],
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            new Padding(
                padding: new EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: new Text(
                  widget.data.articles[index]['description'],
                  style: Theme.of(context).textTheme.subtitle1,
                ))
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
