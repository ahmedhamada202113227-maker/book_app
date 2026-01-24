import 'package:book_app/core/errors/Failures.dart';
import 'package:dartz/dartz.dart';

abstract class UseCaseNoParam<Type> {
  Future<Either<Failure, Type>> call();
}

abstract class UseCaseParam<Type, TParam> {
  Future<Either<Failure, Type>> call([TParam param]);
}
