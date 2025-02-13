import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failures, List<BookModel>>> fetchHorizontalHome();
  Future<Either<Failures, List<BookModel>>> fetchVerticalHome();
}
