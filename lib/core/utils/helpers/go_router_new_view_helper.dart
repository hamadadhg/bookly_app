import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void goRouterNewViewHelper(
    {required BuildContext context,
    required String view,
    BookModel? bookModel}) {
  GoRouter.of(context).push(
    view,
    extra: bookModel,
  );
}
