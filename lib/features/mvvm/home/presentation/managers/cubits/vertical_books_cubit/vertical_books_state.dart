import 'package:bookly_app/core/models/book_model/book_model.dart';

abstract class VerticalBooksState {}

class VerticalBooksInitialState extends VerticalBooksState {}

class VerticalBooksLoadingState extends VerticalBooksState {}

class VerticalBooksFailureState extends VerticalBooksState {
  final String errorMessageVerticalState;
  VerticalBooksFailureState({
    required this.errorMessageVerticalState,
  });
}

class VerticalBooksSuccessState extends VerticalBooksState {
  final List<BookModel> booksVerticalState;
  VerticalBooksSuccessState({
    required this.booksVerticalState,
  });
}
