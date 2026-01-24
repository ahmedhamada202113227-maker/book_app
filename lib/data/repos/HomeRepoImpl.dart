import 'package:book_app/core/errors/Failures.dart';
import 'package:book_app/data/dataSources/home_local_storage/home_local_data_source.dart';
import 'package:book_app/data/dataSources/home_remote_storage/home_remote_data_source.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/domin/entites/BookEntity/BookEntity.dart';
import 'package:book_app/domin/repos/HomeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource remoteDataSource;
  final HomeLocalDataSource localDataSource;
  HomeRepoImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> fetchBooks() async {
    try {
      var localBooks = localDataSource.getLocalBooks();
      if (localBooks.isNotEmpty) {
        return Right(localBooks);
      } else {
        var remoteBooks = await remoteDataSource.getRemoteBooks();
        return Right(remoteBooks);
      }
      // var remoteBooks = await remoteDataSource.getRemoteBooks();
      // return Right(remoteBooks);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } on Exception catch (e) {
      return Left(ServerFailure.fromStatusCode(e.hashCode));
    } catch (e) {
      return Left(ServerFailure('Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, List<ApiBooksEntity>>> fetchApiBooks() async {
    try {
      var localGeneralBooks = localDataSource.getLocalApiBooks();
      if (localGeneralBooks.isNotEmpty) {
        return Right(localGeneralBooks);
      } else {
        var remoteGeneralBook = await remoteDataSource.getRemoteApiBook();
        return Right(remoteGeneralBook);
      }
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } on Exception catch (e) {
      return Left(ServerFailure.fromStatusCode(e.hashCode));
    } catch (e) {
      return Left(ServerFailure('Something went wrong $e'));
    }
  }

  @override
  Future<Either<Failure, List<ApiBooksEntity>>> fetchApiBooksByCategory(
      {required String hCategory}) async {
    try {
      var remoteApiBookByCategory = await remoteDataSource
          .getRemoteApiBookByCategory(rCategory: hCategory);
      return Right(remoteApiBookByCategory);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } on Exception catch (e) {
      return Left(ServerFailure.fromStatusCode(e.hashCode));
    } catch (e) {
      return Left(ServerFailure('Something went wrong : ${e.toString()}'));
    }
  }
}
