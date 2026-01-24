part of 'fetch_remote_books_by_category_cubit.dart';

@immutable
sealed class FetchRemoteBooksByCategoryState {}

final class FetchRemoteBooksByCategoryInitial
    extends FetchRemoteBooksByCategoryState {}

final class FetchRemoteBooksByCategoryLoading
    extends FetchRemoteBooksByCategoryState {}

final class FetchRemoteBooksByCategorySucsses
    extends FetchRemoteBooksByCategoryState {
  final List<ApiBooksEntity> booksByCategory;

  FetchRemoteBooksByCategorySucsses({required this.booksByCategory});
}

final class FetchRemoteBooksByCategoryFailure
    extends FetchRemoteBooksByCategoryState {
  final String errMassage;

  FetchRemoteBooksByCategoryFailure({required this.errMassage});
}
