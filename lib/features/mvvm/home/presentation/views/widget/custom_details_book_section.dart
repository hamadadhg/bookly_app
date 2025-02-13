/*
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/styles/style_to_text.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_app_bar_book_details_view.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_image.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_rating_books.dart';
import 'package:flutter/material.dart';

class CustomDetailsBookSection extends StatelessWidget {
  const CustomDetailsBookSection({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        const CustomAppBarBookDetailsView(),
        SizedBox(
          height: size.height * 0.32,
          child: CustomImage(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        SizedBox(
          height: size.height * 0.037,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.0065,
          ),
          child: Text(
            bookModel.volumeInfo?.title ?? '',
            textAlign: TextAlign.center,
            style: StyleToText.textStyle25.copyWith(
              fontSize: size.height * 0.037,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.0015,
        ),
        Opacity(
          opacity: 0.5,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.0065,
            ),
            child: Text(
              bookModel.volumeInfo?.authors?[0] ?? '',
              textAlign: TextAlign.center,
              style: StyleToText.textStyle18.copyWith(
                fontSize: size.height * 0.022,
              ),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.004,
        ),
        CustomRatingBooks(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo?.averageRating ?? 0,
          count: bookModel.volumeInfo?.ratingsCount ?? 0,
        ),
      ],
    );
  }
}
*/
