import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/small_horizontal_books_cubit/small_horizontal_books_cubit.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    context.read<SmallHorizontalBooksCubit>().smallHorizontalMethod();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomBookDetailsViewBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}
