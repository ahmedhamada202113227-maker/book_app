import 'package:book_app/core/utilis/AppTextStyles.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/presentation/features/DetailsPage/Widgets/CustomBKContainerOfDetailsBook/CustomPriceComparison.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomStackOfPhotoAndTilteBook extends StatelessWidget {
  const CustomStackOfPhotoAndTilteBook({
    super.key,
    required this.height,
    required this.apiBooksEntity,
  });

  final double height;
  final ApiBooksEntity apiBooksEntity;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Positioned(
      right: 0,
      left: 0,
      top: height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 16),
        child: Row(
          children: [
            SizedBox(
              height: height * 0.26,
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        apiBooksEntity.bookImage ?? '',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: SizedBox(
                width: width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      apiBooksEntity.bookName,
                      style: AppTextStyles.bold19,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    Text(
                      apiBooksEntity.bookAuthor ?? 'No Author Available For This Book',
                      style: AppTextStyles.regular16.copyWith(
                        color: Colors.orange.shade300,
                        fontSize: 14,
                      ),
                      
                    ),
                    const SizedBox(height: 6),
                     CustomPriceComparison(
                      apiBooksEntity: apiBooksEntity,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
