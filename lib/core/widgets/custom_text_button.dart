/*
import 'package:bookly_app/core/utils/styles/style_to_text.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.background,
    required this.text,
    required this.textColor,
    required this.fontWeight,
    required this.borderRadius,
    required this.onPressed,
  });
  final Color background;
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final BorderRadius borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: height * 0.015,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
          backgroundColor: background,
        ),
        child: Text(
          text,
          style: StyleToText.textStyle18.copyWith(
            color: textColor,
            fontSize: height * 0.022,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
*/
