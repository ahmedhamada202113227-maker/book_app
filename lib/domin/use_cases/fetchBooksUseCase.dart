
import 'package:book_app/core/errors/Failures.dart';
import 'package:book_app/core/helper/useCases.dart';
import 'package:book_app/data/repos/HomeRepoImpl.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/domin/entites/BookEntity/BookEntity.dart';
import 'package:dartz/dartz.dart';

class FetchBooksUseCase extends UseCaseNoParam<List<BookEntity>> {
  final HomeRepoImpl homeRepoImpl;
  FetchBooksUseCase({required this.homeRepoImpl});

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    return await homeRepoImpl.fetchBooks();
  }
}

class FetchApiBooksUseCase extends UseCaseNoParam<List<ApiBooksEntity>> {
  final HomeRepoImpl homeRepoImpl;
  FetchApiBooksUseCase({required this.homeRepoImpl});

  @override
  Future<Either<Failure, List<ApiBooksEntity>>> call() async {
    return await homeRepoImpl.fetchApiBooks();
  }
}

class FetchApiBooksByCategoryUseCase
    extends UseCaseParam<List<ApiBooksEntity>, String> {
  final HomeRepoImpl homeRepoImpl;
  FetchApiBooksByCategoryUseCase({required this.homeRepoImpl});

  @override
  Future<Either<Failure, List<ApiBooksEntity>>> call([String? param]) async {
    return await homeRepoImpl.fetchApiBooksByCategory(hCategory: param!);
  }
}
