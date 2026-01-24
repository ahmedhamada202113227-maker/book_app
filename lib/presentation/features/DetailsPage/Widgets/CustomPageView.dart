import 'package:book_app/core/utilis/AppTextStyles.dart';
import 'package:book_app/customs/CustomButtonNextPageView.dart';
import 'package:book_app/customs/CustomDivider.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/presentation/features/DetailsPage/Widgets/CustomBlockOfBooksDescreption.dart';
import 'package:book_app/presentation/features/DetailsPage/Widgets/CustomRowBlocksOfBooksDetails/CustomRowBlocksOfBooksDetails.dart';
import 'package:book_app/presentation/features/DetailsPage/Widgets/CustomRowBlocksOfBooksReadAndBuy/CustomRowBlocksOfBooksReadAndBuy.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({
    super.key,
    required this.apiBooksEntity,
  });
  final ApiBooksEntity apiBooksEntity;

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const CustomDivider(),
              const Text(
                'وصف الكتاب',
                style: AppTextStyles.bold16,
              ),
              const CustomDivider(),
              const SizedBox(height: 30),
              CustomBlockOfBooksDescreption(
                apiBooksEntity: widget.apiBooksEntity,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.696,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        widget.apiBooksEntity.bookDescription ?? 'No Des',
                        style: AppTextStyles.regular16,
                        textAlign: TextAlign.center,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
              CustomButtonNextPreviousPageView(pageController: pageController),
            ],
          ),
        ),
        Column(
          children: [
            const CustomDivider(),
            const Text(
              'تفاصيل الكتاب',
              style: AppTextStyles.bold16,
            ),
            const CustomDivider(),
            const SizedBox(height: 30),
            CustomRow1BlocksOfBooksDetails(
              apiBooksEntity: widget.apiBooksEntity,
            ),
            const SizedBox(height: 30),
            CustomRow2BlocksOfBooksDetails(
              apiBooksEntity: widget.apiBooksEntity,
            ),
            const Spacer(),
            CustomButtonNextPreviousPageView(pageController: pageController),
            const SizedBox(height: 30),
          ],
        ),
        Column(
          children: [
            const CustomDivider(),
            const Text(
              'قراءة و شراء الكتاب',
              style: AppTextStyles.bold16,
            ),
            const CustomDivider(),
            const SizedBox(height: 30),
            CustomRowBlocksOfBooksReadAndBuy(
              apiBooksEntity: widget.apiBooksEntity,
            ),
            const SizedBox(height: 30),
            CustomRow2BlocksOfBooksReadAndDownlod(
              apiBooksEntity: widget.apiBooksEntity,
            ),
            const Spacer(),
            CustomButtonNextPreviousPageView(pageController: pageController),
            const SizedBox(height: 30),
          ],
        )
      ],
    );
  }
}
