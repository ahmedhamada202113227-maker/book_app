import 'package:book_app/core/utilis/AppColors.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/presentation/features/DetailsPage/Widgets/DetailsPageViewBody.dart';
import 'package:flutter/material.dart';


class DetailsPageView extends StatelessWidget {
  const DetailsPageView({
    super.key,
    required this.apiBooksEntity,
  });

  static const String id = 'DetailsPageView';
  final ApiBooksEntity apiBooksEntity;
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
        body: SafeArea(
          child: DetailsPageViewBody(
            apiBooksEntity: apiBooksEntity,
          ),
        ),
      ),
    );
  }
}
