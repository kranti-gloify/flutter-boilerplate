import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/themes/colors.dart';

showCustomDialog(BuildContext context, Widget content,
    {bool dismis = true}) async {
  await showDialog(
    context: context,
    barrierDismissible: dismis,
    builder: (BuildContext context) {
      return AlertDialog(
          backgroundColor: AppColors.white,
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18.0))),
          content: content);
    },
  );
}
