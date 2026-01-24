import 'package:book_app/core/utilis/AppTextStyles.dart';
import 'package:book_app/customs/CustomDivider.dart';
import 'package:flutter/material.dart';

class CustomCategoriesHeader extends StatelessWidget {
  const CustomCategoriesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomDivider(),
        Text('Categories', style: AppTextStyles.bold16),
        CustomDivider()
      ],
    );
  }
}
