import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/presentation/features/DetailsPage/Widgets/CustomRowBlocksOfBooksReadAndBuy/CustomBlockOfBooksReadAndBuyItem.dart';
import 'package:flutter/material.dart';

class CustomRowBlocksOfBooksReadAndBuy extends StatelessWidget {
  const CustomRowBlocksOfBooksReadAndBuy({
    super.key,
    required this.apiBooksEntity,
  });

  final ApiBooksEntity apiBooksEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomBlockOfBooksReadAndBuyItem(
          text1: 'PDF Availability',
          text2:
              apiBooksEntity.bookPDFAvailablity.toString(),
        ),
        CustomBlockOfBooksReadAndBuyItem(
          text1: 'Preview Link',
          text2: apiBooksEntity.bookPreviewLink ??
              'No Preview Link Available For This Book',
        ),
      ],
    );
  }
}

class CustomRow2BlocksOfBooksReadAndDownlod extends StatelessWidget {
  const CustomRow2BlocksOfBooksReadAndDownlod({
    super.key,
    required this.apiBooksEntity,
  });
  final ApiBooksEntity apiBooksEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomBlockOfBooksReadAndBuyItem(
          text1: 'Book State',
          text2: apiBooksEntity.bookSaleStatus == 'Free'
              ? 'Free'
              : '${apiBooksEntity.bookPrice.toString()} جنية',
        ),
        CustomBlockOfBooksReadAndBuyItem(
          text1: 'Buy Link',
          text2: apiBooksEntity.bookBuyLink ??
              'No BuyLink Available For This Book',
        ),
      ],
    );
  }
}
