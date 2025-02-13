/*
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/mvvm/search/data/repositories/search_repository_implementation.dart';
import 'package:bookly_app/features/mvvm/search/presentation/managers/cubits/search_books_cubit/search_books_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit({
    required this.searchRepositoryImplementation,
  }) : super(
          SearchBooksInitialState(),
        );
  final SearchRepositoryImplementation searchRepositoryImplementation;
  String? searchBooks;
  Future<void> verticalSearchListViewMethod() async {
    emit(
      SearchBooksLoadingState(),
    );
    Either<Failures, List<BookModel>> result =
        await searchRepositoryImplementation.fetchVerticalSearch(
      searchBooks: searchBooks!,
    );
    result.fold(
      (leftSide) => emit(
        SearchBooksFailureState(
          errorMessageVerticalSearchState: leftSide.errorMessageInFailuresClass,
        ),
      ),
      (rightSide) => emit(
        SearchBooksSuccessState(
          booksVerticalSearchState: rightSide,
        ),
      ),
    );
  }
}
*/
