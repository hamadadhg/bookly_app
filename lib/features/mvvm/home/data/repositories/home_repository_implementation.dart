/*
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/services/api_services.dart';
import 'package:bookly_app/features/mvvm/home/data/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImplementation implements HomeRepository {
  final ApiServices apiServices;
  HomeRepositoryImplementation({
    required this.apiServices,
  });
  @override
  Future<Either<Failures, List<BookModel>>> fetchHorizontalHome() async {
    try {
      var resultFromFullRequest = await apiServices.getMethod(
        endPoint: 'volumes?Sorting=newest&Filtering=free-ebooks&q=books',
      );
      List<BookModel> booksCarouselSlider = [];
      for (var data in resultFromFullRequest['items']) {
        booksCarouselSlider.add(
          BookModel.fromJson(
            data,
          ),
        );
      }
      return right(
        booksCarouselSlider,
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

  @override
  Future<Either<Failures, List<BookModel>>> fetchVerticalHome() async {
    try {
      var resultFromFullRequest = await apiServices.getMethod(
        endPoint: 'volumes?Sorting=newest&Filtering=paid-ebooks&q=books',
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
*/
