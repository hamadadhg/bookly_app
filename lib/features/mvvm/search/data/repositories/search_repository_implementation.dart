import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/services/api_services.dart';
import 'package:bookly_app/features/mvvm/search/data/repositories/search_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepositoryImplementation implements SearchRepository {
  final ApiServices apiServices;
  SearchRepositoryImplementation({
    required this.apiServices,
  });
  @override
  Future<Either<Failures, List<BookModel>>> fetchVerticalSearch(
      {required String searchBooks}) async {
    try {
      var resultFromFullRequest = await apiServices.getMethod(
        endPoint: 'volumes?Sorting=newest&Filtering=ebooks&q=$searchBooks',
      );
      List<BookModel> booksVerticalList = [];
      for (var data in resultFromFullRequest['items']) {
        booksVerticalList.add(
          BookModel.fromJson(
            data,
          ),
        );
      }
      return right(
        booksVerticalList,
      );
    } on DioException catch (e) {
      return left(
        ServerFailure.fromDioException(
          dioException: e,
        ),
      );
    } on Exception catch (e) {
      return left(
        ServerFailure(
          errorMessageInFailuresClass: e.toString(),
        ),
      );
    }
  }
}
