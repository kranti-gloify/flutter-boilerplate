import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/themes/colors.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(
            child: new Column(
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                new Expanded(
                  child: new GridView.count(
                    crossAxisCount: 2,
                    children: new List.generate(2, (index) {
                      return new Center(
                        child: new Text(
                          'headerList[index]',
                          style: new TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
            decoration: new BoxDecoration(
              color: AppColors.primaryLight,
            ),
          ),
          Text("data"),
        ],
      ),
    );
  }
}
