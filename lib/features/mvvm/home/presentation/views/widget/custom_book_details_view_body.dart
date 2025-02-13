/*
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_buy_book.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_details_book_section.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_small_horizontal_list_view_section.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsViewBody extends StatelessWidget {
  const CustomBookDetailsViewBody({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomDetailsBookSection(
                bookModel: bookModel,
              ),
              SizedBox(
                height: height * 0.037,
              ),
              CustomBuyBook(
                bookModel: bookModel,
              ),
              Expanded(
                child: SizedBox(
                  height: height * 0.04,
                ),
              ),
              const CustomSmallHorizontalListViewSection(),
              SizedBox(
                height: height * 0.022,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
*/
