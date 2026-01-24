import 'package:book_app/core/utilis/AppTextStyles.dart';
import 'package:flutter/material.dart';

class CustomRatingRow extends StatelessWidget {
  const CustomRatingRow(
      {super.key, required this.saleability, required this.publishedDate});

  final String saleability;
  final String publishedDate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          child: Text(
            saleability,
            style: AppTextStyles.medium16.copyWith(
              
            ),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.orange.shade300,
              size: 16,
            ),
            const SizedBox(width: 8),
            Text(
              '4.5',
              style: AppTextStyles.light19.copyWith(
                fontFamily: 'Handjet',
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              child: Column(
                children: [
                  Text(
                    '(Published In)',
                    style: AppTextStyles.light16.copyWith(
                      fontFamily: 'Handjet',
                    ),
                  ),
                  Text(
                    publishedDate,
                    style: AppTextStyles.light16.copyWith(
                      fontFamily: 'Handjet',
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
