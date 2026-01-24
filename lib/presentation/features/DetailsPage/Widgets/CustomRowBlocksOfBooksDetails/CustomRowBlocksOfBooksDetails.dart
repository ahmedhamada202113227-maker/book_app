import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/presentation/features/DetailsPage/Widgets/CustomRowBlocksOfBooksDetails/CustomBlockOfBooksDetailsItem.dart';
import 'package:flutter/material.dart';

class CustomRow1BlocksOfBooksDetails extends StatelessWidget {
  const CustomRow1BlocksOfBooksDetails({
    super.key,
    required this.apiBooksEntity,
  });

  final ApiBooksEntity apiBooksEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomBlockOfBooksDetailsItem(
          text1: 'عدد الصفحات',
          text2: apiBooksEntity.bookPageCount.toString(),
        ),
        const CustomBlockOfBooksDetailsItem(
          text1: 'التقييم',
          text2: '4.5',
        ),
      ],
    );
  }
}

class CustomRow2BlocksOfBooksDetails extends StatelessWidget {
  const CustomRow2BlocksOfBooksDetails({
    super.key, required this.apiBooksEntity,
  });
  final ApiBooksEntity apiBooksEntity;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomBlockOfBooksDetailsItem(
          text1: 'اللغة',
          text2:apiBooksEntity.bookLagnuage ?? 'No Lang',
        ),
        CustomBlockOfBooksDetailsItem(
          text1: 'الناشر',
          text2:  apiBooksEntity.bookPublisher ?? 'No Publisher',
        ),
      ],
    );
  }
}
