part of 'fetch_remote_api_books_cubit.dart';

sealed class FetchRemoteApiBooksState {}

final class FetchRemoteApiBooksInitial extends FetchRemoteApiBooksState {}

final class FetchRemoteApiBooksLoading extends FetchRemoteApiBooksState {}

final class FetchRemoteApiBooksSuccess extends FetchRemoteApiBooksState {
  final List<ApiBooksEntity> apiBooks;

  FetchRemoteApiBooksSuccess({required this.apiBooks});
}

final class FetchRemoteApiBooksFailure extends FetchRemoteApiBooksState {
  final String errMassage;

  FetchRemoteApiBooksFailure({required this.errMassage});
}
