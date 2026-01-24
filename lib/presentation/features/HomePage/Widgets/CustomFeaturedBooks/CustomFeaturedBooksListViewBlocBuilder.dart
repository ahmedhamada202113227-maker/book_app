import 'package:book_app/presentation/features/HomePage/Widgets/CustomFeaturedBooks/CustomFeaturedBooksListView.dart';
import 'package:book_app/presentation/manager/fetch_remote_books/fetch_remote_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomFeaturedBooksBlocBuilderListView extends StatefulWidget {
  const CustomFeaturedBooksBlocBuilderListView({
    super.key,
  });

  @override
  State<CustomFeaturedBooksBlocBuilderListView> createState() =>
      _CustomFeaturedBooksBlocBuilderListViewState();
}

class _CustomFeaturedBooksBlocBuilderListViewState
    extends State<CustomFeaturedBooksBlocBuilderListView> {
  @override
  void initState() {
    super.initState();
    context.read<FetchRemoteBooksCubit>().fetchBooksCubit();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchRemoteBooksCubit, FetchRemoteBooksState>(
      builder: (context, state) {
        if (state is FetchRemoteBooksSuccess) {
          return CustomFeaturedBooksListView(books: state.books);
        } else if (state is FetchRemoteBooksFailure) {
          return Text(state.errMassage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
