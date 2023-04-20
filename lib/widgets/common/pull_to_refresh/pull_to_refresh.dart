import 'package:flutter/material.dart';

class PullRefresh extends StatelessWidget {
  final Widget bodyWidget;
  final Future<void> Function() refreshFn;

  const PullRefresh(
      {Key? key, required this.bodyWidget, required this.refreshFn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refreshFn,
      child: bodyWidget,
    );
  }
}
