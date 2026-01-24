import 'package:book_app/presentation/features/CategoriesPage/Widgets/CustomAPiBooksByCategoryListView.dart';
import 'package:book_app/presentation/manager/fetch_remote_book_by_category/fetch_remote_books_by_category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CustomApiBooksByCategoryListViewBlocBuilder extends StatefulWidget {
  const CustomApiBooksByCategoryListViewBlocBuilder({
    super.key,
    required this.category,
  });
  final String category;

  @override
  State<CustomApiBooksByCategoryListViewBlocBuilder> createState() =>
      _CustomApiBooksByCategoryListViewBlocBuilderState();
}


class _CustomApiBooksByCategoryListViewBlocBuilderState
    extends State<CustomApiBooksByCategoryListViewBlocBuilder> {
  @override
  void initState() {
    super.initState();
    context
        .read<FetchRemoteBooksByCategoryCubit>()
        .fetchBooksByCategory(cCategory: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchRemoteBooksByCategoryCubit,
        FetchRemoteBooksByCategoryState>(
      builder: (context, state) {
        if (state is FetchRemoteBooksByCategorySucsses) {
          return CustomAPiBooksByCategoryListView(
            apiBooksEntity: state.booksByCategory,
          );
        } else if (state is FetchRemoteBooksByCategoryFailure) {
          return Center(
            child: Text(state.errMassage),
          );
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
