/*
// ignore_for_file: use_build_context_synchronously
import 'package:bookly_app/core/utils/helpers/snack_bar_helper.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void launchUrlHelper(
    {required String url,
    required BuildContext context,
    required String textSnackBar}) async {
  final Uri uri = Uri.parse(
    url,
  );
  if (await canLaunchUrl(uri)) {
    await launchUrl(
      uri,
    );
  } else {
    snackBarHelper(
      context: context,
      text: textSnackBar,
    );
  }
}
*/
