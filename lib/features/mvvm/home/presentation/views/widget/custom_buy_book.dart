/*
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/helpers/get_free_text_helper.dart';
import 'package:bookly_app/core/utils/helpers/get_paid_text_helper.dart';
import 'package:bookly_app/core/utils/helpers/launch_url_helper.dart';
import 'package:bookly_app/core/utils/styles/style_to_colors.dart';
import 'package:bookly_app/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class CustomBuyBook extends StatelessWidget {
  const CustomBuyBook({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.15,
      ),
      child: Row(
        children: [
          CustomTextButton(
            onPressed: bookModel.saleInfo?.saleability == 'FOR_SALE' &&
                    bookModel.saleInfo?.buyLink != null
                ? () {
                    launchUrlHelper(
                      url: bookModel.saleInfo!.buyLink!,
                      context: context,
                      textSnackBar: 'Purchase unavailable for this book',
                    );
                  }
                : null, //null don't click on button
            background: StyleToColors.whiteColor,
            text: getPaidTextHelper(
              bookModel: bookModel,
            ),
            textColor: StyleToColors.blackColors,
            fontWeight: FontWeight.bold,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                12,
              ),
              bottomLeft: Radius.circular(
                12,
              ),
            ),
          ),
          CustomTextButton(
            onPressed: bookModel.volumeInfo?.previewLink != null
                ? () {
                    launchUrlHelper(
                      url: bookModel.volumeInfo!.previewLink!,
                      context: context,
                      textSnackBar: 'Preview unavailable for this book',
                    );
                  }
                : null, //null don't click on button
            background: StyleToColors.littleOrangeColor,
            text: getFreeTextHelper(
              bookModel: bookModel,
            ),
            textColor: StyleToColors.whiteColor,
            fontWeight: FontWeight.normal,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(
                12,
              ),
              bottomRight: Radius.circular(
                12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/
