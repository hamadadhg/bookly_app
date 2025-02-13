import 'package:bookly_app/core/models/book_model/book_model.dart';

String getPaidTextHelper({required BookModel bookModel}) {
  return bookModel.saleInfo?.saleability == 'FOR_SALE'
      ? '${bookModel.saleInfo?.retailPrice?.amount}€'
      : 'Not For Sale';
}
