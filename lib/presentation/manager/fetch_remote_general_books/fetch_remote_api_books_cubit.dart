import 'package:bloc/bloc.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/domin/use_cases/fetchBooksUseCase.dart';
part 'fetch_remote_api_books_state.dart';

class FetchRemoteApiBooksCubit extends Cubit<FetchRemoteApiBooksState> {
  FetchRemoteApiBooksCubit(this.fetchGeneralBooksUseCase)
      : super(FetchRemoteApiBooksInitial());

  final FetchApiBooksUseCase fetchGeneralBooksUseCase;

  Future<void> fetchApiBooksCubit() async {
    emit(FetchRemoteApiBooksLoading());
    final result = await fetchGeneralBooksUseCase.call();
    print("Result: $result");
    result.fold(
      (l) => emit(FetchRemoteApiBooksFailure(errMassage: l.message)),
      (r) => emit(FetchRemoteApiBooksSuccess(apiBooks: r)),
    );
  }
}
