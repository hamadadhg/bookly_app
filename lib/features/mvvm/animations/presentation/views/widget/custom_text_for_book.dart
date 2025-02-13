import 'package:bookly_app/core/utils/styles/style_to_text.dart';
import 'package:flutter/material.dart';

class CustomTextForBook extends StatelessWidget {
  const CustomTextForBook({
    super.key,
    required this.text,
    required this.position,
  });
  final String text;
  final Animation<Offset> position;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SlideTransition(
      position: position,
      child: Text(
        text,
        style: StyleToText.textStyle18.copyWith(
          fontSize: size.height * 0.028,
        ),
      ),
    );
  }
}
