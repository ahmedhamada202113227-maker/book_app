import 'package:book_app/customs/CustomAppBar.dart';
import 'package:book_app/customs/CustomDivider.dart';
import 'package:book_app/presentation/features/CategoriesPage/Widgets/CustomApiBooksByCategoryListViewBlocBuilder.dart';
import 'package:flutter/material.dart';

class CategoriesPageViewBody extends StatelessWidget {
  const CategoriesPageViewBody({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const CustomAppBar(),
            const CustomDivider(),
            CustomApiBooksByCategoryListViewBlocBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
