import 'package:flutter_boilerplate/themes/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.black.withOpacity(0.9),
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2);
}
