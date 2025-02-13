import 'package:bookly_app/core/models/book_model/book_model.dart';

abstract class CarouselSliderBooksState {}

class CarouselSliderBooksInitialState extends CarouselSliderBooksState {}

class CarouselSliderBooksLoadingState extends CarouselSliderBooksState {}

class CarouselSliderBooksFailureState extends CarouselSliderBooksState {
  final String errorMessageCarouselSliderState;
  CarouselSliderBooksFailureState({
    required this.errorMessageCarouselSliderState,
  });
}

class CarouselSliderBooksSuccessState extends CarouselSliderBooksState {
  final List<BookModel> booksCarouselSliderState;
  CarouselSliderBooksSuccessState({
    required this.booksCarouselSliderState,
  });
}
