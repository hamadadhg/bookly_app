/*
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/mvvm/home/data/repositories/home_repository_implementation.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/vertical_books_cubit/vertical_books_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerticalBooksCubit extends Cubit<VerticalBooksState> {
  VerticalBooksCubit({
    required this.homeRepositoryImplementation,
  }) : super(
          VerticalBooksInitialState(),
        );
  final HomeRepositoryImplementation homeRepositoryImplementation;
  Future<void> verticalListViewMethod() async {
    emit(
      VerticalBooksLoadingState(),
    );
    Either<Failures, List<BookModel>> result =
        await homeRepositoryImplementation.fetchVerticalHome();
    result.fold(
      (leftSide) => emit(
        VerticalBooksFailureState(
          errorMessageVerticalState: leftSide.errorMessageInFailuresClass,
        ),
      ),
      (rightSide) => emit(
        VerticalBooksSuccessState(
          booksVerticalState: rightSide,
        ),
      ),
    );
  }
}
*/
