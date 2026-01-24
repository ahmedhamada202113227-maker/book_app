import 'package:bloc/bloc.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/domin/use_cases/fetchBooksUseCase.dart';
import 'package:meta/meta.dart';

part 'fetch_remote_books_by_category_state.dart';

class FetchRemoteBooksByCategoryCubit
    extends Cubit<FetchRemoteBooksByCategoryState> {
  FetchRemoteBooksByCategoryCubit(this.fetchApiBooksByCategoryUseCase)
      : super(FetchRemoteBooksByCategoryInitial());

  final FetchApiBooksByCategoryUseCase fetchApiBooksByCategoryUseCase;

  void fetchBooksByCategory({required String cCategory}) async {
    emit(FetchRemoteBooksByCategoryLoading());
    var result = await fetchApiBooksByCategoryUseCase(cCategory);
    print('FetchRemoteBooksByCategoryCubit: $result');
    result.fold(
      (l) => emit(FetchRemoteBooksByCategoryFailure(errMassage: l.message)),
      (r) => emit(FetchRemoteBooksByCategorySucsses(booksByCategory: r)),
    );
  }
}
