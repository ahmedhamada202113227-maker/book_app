import 'package:book_app/presentation/features/CategoriesPage/Widgets/CustomAPiBooksByCategoryListView.dart';
import 'package:book_app/presentation/manager/fetch_remote_general_books/fetch_remote_api_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CustomGeneralBooksListViewBlocBuilder extends StatefulWidget {
  const CustomGeneralBooksListViewBlocBuilder({
    super.key,
  });

  @override
  State<CustomGeneralBooksListViewBlocBuilder> createState() =>
      _CustomGeneralBooksListViewBlocBuilderState();
}

class _CustomGeneralBooksListViewBlocBuilderState
    extends State<CustomGeneralBooksListViewBlocBuilder> {
  @override
  void initState() {
    super.initState();
    context.read<FetchRemoteApiBooksCubit>().fetchApiBooksCubit();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchRemoteApiBooksCubit, FetchRemoteApiBooksState>(
      builder: (context, state) {
        if (state is FetchRemoteApiBooksSuccess) {
          return CustomAPiBooksByCategoryListView(
            apiBooksEntity: state.apiBooks,
          );
        } else if (state is FetchRemoteApiBooksFailure) {
          return Text(state.errMassage);
        } else {
          return const LoadingIndicator(
            indicatorType: Indicator.ballZigZagDeflect,
            // Indicator.ballScale,
            colors: [Colors.white, Colors.blueGrey],
            strokeWidth: 1,
            backgroundColor: Colors.transparent,
          );
        }
      },
    );
  }
}
