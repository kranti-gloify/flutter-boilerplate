import 'package:flutter/material.dart';

class ErrorDisplayWidget extends StatelessWidget {
  final String errorMessage;

  ErrorDisplayWidget({required this.errorMessage});

  @override
  Widget build(BuildContext context) {
   return Container(
    child: Center(
      child: Text(
        errorMessage,
        style:Theme.of(context).textTheme.titleMedium,
      )
    ),
   );
  }

}