/*
import 'package:bookly_app/core/utils/styles/style_to_text.dart';
import 'package:flutter/material.dart';

class CustomRatingBooks extends StatelessWidget {
  const CustomRatingBooks({
    super.key,
    required this.mainAxisAlignment,
    required this.rating,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          Icons.star,
          color: const Color(
            0xffFFDD4f,
          ),
          size: size.height * 0.023,
        ),
        SizedBox(
          width: size.width * 0.007,
        ),
        Text(
          '$rating',
          style: StyleToText.textStyle16.copyWith(
            fontSize: size.height * 0.021,
          ),
        ),
        SizedBox(
          width: size.width * 0.007,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '($count)',
            style: StyleToText.textStyle14.copyWith(
              fontSize: size.height * 0.018,
            ),
          ),
        ),
      ],
    );
  }
}
*/
