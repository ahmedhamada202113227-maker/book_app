import 'package:bloc/bloc.dart';
import 'package:book_app/domin/entites/BookEntity/BookEntity.dart';
import 'package:book_app/domin/use_cases/fetchBooksUseCase.dart';
import 'package:meta/meta.dart';

part 'fetch_remote_books_state.dart';

class FetchRemoteBooksCubit extends Cubit<FetchRemoteBooksState> {
  FetchRemoteBooksCubit(this.fetchBooksUseCase)
      : super(FetchRemoteBooksInitial());

  final FetchBooksUseCase fetchBooksUseCase;

  Future<void> fetchBooksCubit() async {
    emit(FetchRemoteBooksLoading());
    var result = await fetchBooksUseCase.call();
    print("Result: $result");
    result.fold(
      (l) => emit(FetchRemoteBooksFailure(errMassage: l.message)),
      (r) => emit(FetchRemoteBooksSuccess(books: r)),
    );
  }
}
