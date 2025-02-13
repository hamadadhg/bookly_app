import 'package:bookly_app/core/utils/styles/style_to_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          16,
        ),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) {
            return Icon(
              Icons.error,
              color: StyleToColors.redColor,
              size: height * 0.05,
            );
          },
        ),
      ),
    );
  }
}
