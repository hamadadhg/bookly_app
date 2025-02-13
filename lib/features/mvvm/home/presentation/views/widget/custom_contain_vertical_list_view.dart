/*
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/styles/style_to_colors.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_image_section.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_texts_books_section.dart';
import 'package:flutter/material.dart';

class CustomContainVerticalListView extends StatelessWidget {
  const CustomContainVerticalListView({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Material(
      color: StyleToColors.transparentColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageSection(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
          SizedBox(
            width: width * 0.08,
          ),
          CustomTextsBooksSection(
            bookModel: bookModel,
          ),
        ],
      ),
    );
  }
}
*/
