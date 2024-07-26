import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/themes/colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final Color bgColor, overlayColor;
  final double width, height;
  const ShimmerWidget(
      {Key? key,
      required this.bgColor,
      required this.overlayColor,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: Shimmer.fromColors(
          baseColor: bgColor,
          highlightColor: overlayColor,
          child: Container(
            width: width,
            height: height,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
