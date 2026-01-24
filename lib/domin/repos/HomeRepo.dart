import 'package:book_app/core/errors/Failures.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/domin/entites/BookEntity/BookEntity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchBooks();
  Future<Either<Failure, List<ApiBooksEntity>>> fetchApiBooks();
  Future<Either<Failure, List<ApiBooksEntity>>> fetchApiBooksByCategory({required String hCategory});
}
