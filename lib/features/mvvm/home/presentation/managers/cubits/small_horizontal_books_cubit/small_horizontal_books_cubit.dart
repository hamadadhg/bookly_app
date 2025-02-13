import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/mvvm/home/data/repositories/home_repository_implementation.dart';
import 'package:bookly_app/features/mvvm/home/presentation/managers/cubits/small_horizontal_books_cubit/small_horizontal_books_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SmallHorizontalBooksCubit extends Cubit<SmallHorizontalBooksState> {
  SmallHorizontalBooksCubit({
    required this.homeRepositoryImplementation,
  }) : super(
          SmallHorizontalBooksInitialState(),
        );
  final HomeRepositoryImplementation homeRepositoryImplementation;
  Future<void> smallHorizontalMethod() async {
    emit(
      SmallHorizontalBooksLoadingState(),
    );
    Either<Failures, List<BookModel>> result =
        await homeRepositoryImplementation.fetchHorizontalHome();
    result.fold(
      (leftSide) => emit(
        SmallHorizontalBooksFailureState(
          errorMessageSmallHorizontalState:
              leftSide.errorMessageInFailuresClass,
        ),
      ),
      (rightSide) {
        emit(
          SmallHorizontalBooksSuccessState(
            booksSmallHorizontalState: rightSide,
          ),
        );
      },
    );
  }
}
