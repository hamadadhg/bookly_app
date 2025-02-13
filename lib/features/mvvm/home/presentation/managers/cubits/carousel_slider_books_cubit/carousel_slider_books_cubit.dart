/*
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/mvvm/home/data/repositories/home_repository_implementation.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/carousel_slider_books_cubit/carousel_slider_books_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarouselSliderBooksCubit extends Cubit<CarouselSliderBooksState> {
  CarouselSliderBooksCubit({
    required this.homeRepositoryImplementation,
  }) : super(
          CarouselSliderBooksInitialState(),
        );
  final HomeRepositoryImplementation homeRepositoryImplementation;
  Future<void> carouselSliderMethod() async {
    emit(
      CarouselSliderBooksLoadingState(),
    );
    Either<Failures, List<BookModel>> result =
        await homeRepositoryImplementation.fetchHorizontalHome();
    result.fold(
      (leftSide) => emit(
        CarouselSliderBooksFailureState(
          errorMessageCarouselSliderState: leftSide.errorMessageInFailuresClass,
        ),
      ),
      (rightSide) => emit(
        CarouselSliderBooksSuccessState(
          booksCarouselSliderState: rightSide,
        ),
      ),
    );
  }
}
*/
