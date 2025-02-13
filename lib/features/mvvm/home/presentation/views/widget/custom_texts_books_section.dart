/*
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/helpers/get_paid_text_helper.dart';
import 'package:bookly_app/core/utils/styles/style_to_text.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/custom_rating_books.dart';
import 'package:flutter/material.dart';

class CustomTextsBooksSection extends StatelessWidget {
  const CustomTextsBooksSection({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.0015,
          ),
          Opacity(
            opacity: .9,
            child: Text(
              bookModel.volumeInfo?.title ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: StyleToText.textStyle20.copyWith(
                fontSize: height * 0.027,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.006,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              bookModel.volumeInfo?.authors?[0] ?? '',
              overflow: TextOverflow.ellipsis,
              style: StyleToText.textStyle14.copyWith(
                fontSize: height * 0.021,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.003,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                getPaidTextHelper(
                  bookModel: bookModel,
                ),
                style: StyleToText.textStyle16.copyWith(
                  fontSize: height * 0.025,
                ),
              ),
              CustomRatingBooks(
                rating: bookModel.volumeInfo?.averageRating ?? 0,
                count: bookModel.volumeInfo?.ratingsCount ?? 0,
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/
