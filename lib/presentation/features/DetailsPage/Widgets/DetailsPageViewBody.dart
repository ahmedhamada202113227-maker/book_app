import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/presentation/features/DetailsPage/Widgets/CustomBKContainerOfDetailsBook/CustomBKContainerOfDetailsBook.dart';
import 'package:book_app/presentation/features/DetailsPage/Widgets/CustomDetailAppBar.dart';
import 'package:book_app/presentation/features/DetailsPage/Widgets/CustomPageView.dart';
import 'package:flutter/material.dart';

class DetailsPageViewBody extends StatelessWidget {
  const DetailsPageViewBody({super.key, required this.apiBooksEntity});

  final ApiBooksEntity apiBooksEntity;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            children: [
              CustomBKContainerOfDetailsBook(
                apiBooksEntity: apiBooksEntity,
              ),
              const CustomDetailAppBar(),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 80),
        ),
        SliverFillRemaining(
          child: CustomPageView(
            apiBooksEntity: apiBooksEntity,
          ),
        ),
      ],
    );
  }
}
