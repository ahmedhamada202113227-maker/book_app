import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/presentation/features/HomePage/Widgets/CustomGeneralBooks/CustomGeneralBooksItem.dart';
import 'package:flutter/material.dart';

class CustomGeneralBooksListView extends StatelessWidget {
  const CustomGeneralBooksListView({super.key, required this.apiBooksEntity});

  final List<ApiBooksEntity> apiBooksEntity;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      clipBehavior: Clip.none,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: apiBooksEntity.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: CustomGeneralBooksItem(
            apiBooksEntity: ApiBooksEntity(
              bookAuthor: apiBooksEntity[index].bookAuthor ?? '',
              bookImage: apiBooksEntity[index].bookImage ?? '',
              bookName: apiBooksEntity[index].bookName,
              bookPrice: apiBooksEntity[index].bookPrice,
              bookPublishedDate: apiBooksEntity[index].bookPublishedDate ??
                  'No Publshed Date For This Book',
              bookSaleStatus:
                  apiBooksEntity[index].bookSaleStatus == 'NOT_FOR_SALE'
                      ? 'Free'
                      : '${apiBooksEntity[index].bookPrice} جنية',
              bookBuyLink:
                  apiBooksEntity[index].bookBuyLink ?? 'No Buy Link Available',
              bookCategory: apiBooksEntity[index].bookCategory ??
                  'No Category Available For This Book',
              bookDescription: apiBooksEntity[index].bookDescription ??
                  'No Description Available For This Book',
              bookGooglePlayLink: apiBooksEntity[index].bookGooglePlayLink ??
                  'No Google Play Link Available',
              bookId: apiBooksEntity[index].bookId,
              bookLagnuage: apiBooksEntity[index].bookLagnuage ?? 'en',
              bookPDFAvailablity:
                  apiBooksEntity[index].bookPDFAvailablity ?? false,
              bookPageCount: apiBooksEntity[index].bookPageCount ?? 0,
              bookPreviewLink: apiBooksEntity[index].bookPreviewLink ??
                  'No Preview Link Available',
              bookPreviewer: apiBooksEntity[index].bookPreviewer ??
                  'No Book Version Available',
              bookPriceCode: apiBooksEntity[index].bookPriceCode ??
                  'No Book Version Available',
              bookPublisher: apiBooksEntity[index].bookPublisher ??
                  'No Publisher Available',
            ),
            // generalBookImg: apiBooksEntity[index].bookImage ?? '',
            // generalBookTitle: apiBooksEntity[index].bookName,
            // generalBookAuthor: apiBooksEntity[index].bookAuthor ?? '',
            // generalBookSaleability:
            //     apiBooksEntity[index].bookSaleStatus == 'NOT_FOR_SALE'
            //         ? 'Free'
            //         : '${apiBooksEntity[index].bookPrice} جنية',
            // generalBookPublishedDate: apiBooksEntity[index].bookPublishedDate ??
            //     'No Publshed Date For This Book',
          ),
        );
      },
    );
  }
}
