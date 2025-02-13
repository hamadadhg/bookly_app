/*
import 'package:bookly_app/core/utils/constant/constant_value_of_type_string.dart';
import 'package:bookly_app/core/utils/styles/style_to_text.dart';
import 'package:bookly_app/core/book_model/book_model.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/book_rating_widget.dart';
import 'package:bookly_app/features/mvvm/home/presentation/views/widget/item_image_widget.dart';
import 'package:flutter/material.dart';

class ContainRowWidget extends StatelessWidget {
  const ContainRowWidget({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          ItemImageWidget(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    bookModel.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: StyleToText.textStyle20.copyWith(
                      fontFamily: kGTSectraFine,
                    ),
                  ),
                ),
                Text(
                  bookModel.volumeInfo.authors?[0] ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: StyleToText.textStyle14,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: StyleToText.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    BookRatingWidget(
                      rating: bookModel.volumeInfo.averageRating ?? 0,
                      count: bookModel.volumeInfo.ratingsCount ?? 0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/
