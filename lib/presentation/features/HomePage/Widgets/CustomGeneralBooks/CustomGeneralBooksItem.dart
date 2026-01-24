import 'package:book_app/core/utilis/AppTextStyles.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/presentation/features/HomePage/Widgets/CustomGeneralBooks/CustomRatingRow.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CustomGeneralBooksItem extends StatelessWidget {
  const CustomGeneralBooksItem({
    super.key,
    // required this.generalBookImg,
    // required this.generalBookTitle,
    // required this.generalBookAuthor,
    // required this.generalBookSaleability,
    // required this.generalBookPublishedDate,
    required this.apiBooksEntity,
  });

  // final String generalBookImg;
  // final String generalBookTitle;
  // final String generalBookAuthor;
  // final String generalBookSaleability;
  // final String generalBookPublishedDate;
  final ApiBooksEntity apiBooksEntity;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      overlayColor: WidgetStatePropertyAll(Colors.white.withOpacity(0.4)),
      // radius: 100,
      splashFactory: InkSplash.splashFactory,
      onTap: () {
        GoRouter.of(context).push(
          '/DetailsPage',
          extra: apiBooksEntity,
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: SizedBox(
                  child: CachedNetworkImage(
                    imageUrl: apiBooksEntity.bookImage ?? '',
                    placeholder: (context, url) => const Center(
                      child: LoadingIndicator(
                        indicatorType: Indicator.ballZigZagDeflect,
                        // Indicator.ballScale,
                        colors: [Colors.white, Colors.blueGrey],
                        strokeWidth: 1,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(FontAwesomeIcons.circleExclamation),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  apiBooksEntity.bookName,
                  style: AppTextStyles.bold16,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  apiBooksEntity.bookAuthor ?? 'No Author',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: Colors.orange.shade300,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 8),
              CustomRatingRow(
                saleability: apiBooksEntity.bookSaleStatus ?? 'No Saleability',
                publishedDate: apiBooksEntity.bookPublishedDate ?? 'No Date',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
