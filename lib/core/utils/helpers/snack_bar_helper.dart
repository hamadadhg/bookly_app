import 'package:bookly_app/core/utils/constant/constant_time.dart';
import 'package:bookly_app/core/utils/styles/style_to_colors.dart';
import 'package:bookly_app/core/utils/styles/style_to_text.dart';
import 'package:flutter/material.dart';

void snackBarHelper({required BuildContext context, required String text}) {
  var size = MediaQuery.of(context).size;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: kSixSeconds,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      backgroundColor: StyleToColors.redAccentColor,
      content: Row(
        children: [
          const Icon(
            Icons.error_outline,
            color: StyleToColors.whiteColor,
          ),
          SizedBox(
            width: size.width * 0.015,
          ),
          Text(
            text,
            style: StyleToText.textStyle16.copyWith(
              color: StyleToColors.whiteColor,
              fontSize: size.height * 0.021,
            ),
          ),
        ],
      ),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
        textColor: StyleToColors.whiteColor,
      ),
    ),
  );
}
