part of 'fetch_remote_books_cubit.dart';

@immutable
sealed class FetchRemoteBooksState {}

final class FetchRemoteBooksInitial extends FetchRemoteBooksState {}

final class FetchRemoteBooksLoading extends FetchRemoteBooksState {}

final class FetchRemoteBooksSuccess extends FetchRemoteBooksState {
  final List<BookEntity> books;

  FetchRemoteBooksSuccess({required this.books});
}

final class FetchRemoteBooksFailure extends FetchRemoteBooksState {
  final String errMassage;

  FetchRemoteBooksFailure({required this.errMassage});
}
