import 'package:flutter/material.dart';

bottomSheetPopup(
  BuildContext context,
  Widget bottomContent,
//Function filterData
) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => bottomContent);
}
