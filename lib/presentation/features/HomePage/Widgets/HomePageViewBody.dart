import 'package:book_app/customs/CustomDivider.dart';
import 'package:book_app/presentation/features/HomePage/Widgets/CustomCategoriesHeader.dart';
import 'package:book_app/presentation/features/HomePage/Widgets/CustomCategoriesListView/CustomCategoriesListView.dart';
import 'package:book_app/presentation/features/HomePage/Widgets/CustomGeneralBooks/CustomGeneralBooksHeader.dart';
import 'package:book_app/presentation/features/HomePage/Widgets/CustomGeneralBooks/CustomGeneralBooksListViewBlocBuilder.dart';
import 'package:book_app/presentation/features/HomePage/Widgets/CustomFeaturedBooks/CustomFeaturedBooksListViewBlocBuilder.dart';
import 'package:book_app/customs/CustomAppBar.dart';
import 'package:flutter/material.dart';

class HomePageViewBody extends StatelessWidget {
  const HomePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 16),
                const CustomAppBar(),
                const SizedBox(height: 8),
                const CustomCategoriesHeader(),
                const SizedBox(height: 8),
                CustomCategoriesListView(),
                const SizedBox(height: 16),
                const CustomDivider(),
                const SizedBox(height: 16),
                const CustomFeaturedBooksBlocBuilderListView(),
                const SizedBox(height: 16),
                const CustomDivider(),
                const SizedBox(height: 12),
                const CustomGeneralBooksHeader(),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomGeneralBooksListViewBlocBuilder(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
        ],
      ),
    );
  }
}
