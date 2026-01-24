import 'package:book_app/core/services/get_it_service.dart';
import 'package:book_app/core/utilis/AppColors.dart';
import 'package:book_app/customs/CustomDrawer.dart';
import 'package:book_app/domin/use_cases/fetchBooksUseCase.dart';
import 'package:book_app/presentation/features/CategoriesPage/Widgets/CategoriesPageViewBody.dart';
import 'package:book_app/presentation/manager/fetch_remote_book_by_category/fetch_remote_books_by_category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesPageView extends StatelessWidget {
  const CategoriesPageView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.secondaryColor,
            AppColors.secondaryColor.withOpacity(0.35),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: const CustomDrawer(),
        body: SafeArea(
          child: BlocProvider(
            create: (context) => FetchRemoteBooksByCategoryCubit(
              getIt<FetchApiBooksByCategoryUseCase>(),
            ),
            child: CategoriesPageViewBody(
              category: category,
            ),
          ),
        ),
      ),
    );
  }
}
