import 'package:book_app/core/services/get_it_service.dart';
import 'package:book_app/core/utilis/AppColors.dart';

import 'package:book_app/domin/use_cases/fetchBooksUseCase.dart';
import 'package:book_app/presentation/features/HomePage/Widgets/HomePageViewBody.dart';
import 'package:book_app/presentation/manager/fetch_remote_books/fetch_remote_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  static const String id = 'HomePageView';
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
      child: BlocProvider(
        create: (context) => FetchRemoteBooksCubit(
          getIt<FetchBooksUseCase>(),
        )..fetchBooksUseCase(),
        child: const Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child:  HomePageViewBody(),
          ),
        ),
      ),
    );
  }
}
