import 'package:bookly_app/core/utils/styles/style_to_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomImageShimmer extends StatelessWidget {
  const CustomImageShimmer({
    super.key,
    required this.heightPercent,
    required this.widthPercent,
  });
  final double heightPercent;
  final double widthPercent;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Shimmer.fromColors(
      baseColor: StyleToColors
          .grey700Color, //this color is base so will be color to widget the attribute it is child, sure i mean child in Shimmer.fromColors
      highlightColor:
          StyleToColors.grey400Color, //this color will walk on baseColor
      child: Container(
        height: size.height * heightPercent,
        width: size.width * widthPercent,
        color: StyleToColors
            .whiteColor, //necessary give any color to work the Shimmer.fromColors effect
      ),
    );
  }
}
