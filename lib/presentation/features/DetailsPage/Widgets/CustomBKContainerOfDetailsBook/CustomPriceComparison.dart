import 'package:book_app/core/utilis/AppTextStyles.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:flutter/material.dart';

class CustomPriceComparison extends StatelessWidget {
  const CustomPriceComparison({
    Key? key,
    required this.apiBooksEntity,
  }) : super(key: key);

  final double newPrice = 200;

  final ApiBooksEntity apiBooksEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        apiBooksEntity.bookSaleStatus == 'Free'
            ? Text(
                'Free',
                style: AppTextStyles.bold19.copyWith(
                  color: Colors.green.shade300,
                ),
              )
            : Text(
                '${apiBooksEntity.bookPrice?.toStringAsFixed(2)}',
                style: AppTextStyles.bold16.copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
        const SizedBox(width: 8),
        Visibility(
          visible: apiBooksEntity.bookSaleStatus == 'Free' ? false : true,
          child: Text(
            '${newPrice.toStringAsFixed(0)} جنية',
            style: AppTextStyles.bold16.copyWith(
              color: Colors.orange.shade300,
            ),
          ),
        ),
      ],
    );

    // switch (apiBooksEntity.bookSaleStatus == 'NOT_FOR_SALE') {
    //   true => Text(
    //       'Free',
    //       style: AppTextStyles.bold16.copyWith(
    //         color: Colors.green,
    //       ),
    //     ),
    //   false => Row(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         Text(
    //           '\$${apiBooksEntity.bookPrice?.toStringAsFixed(2) ?? 'Free'}',
    //           style: AppTextStyles.bold16.copyWith(
    //             decoration: TextDecoration.lineThrough,
    //           ),
    //         ),
    //         const SizedBox(width: 8),
    //         Text(
    //           '${newPrice.toStringAsFixed(0)} جنية',
    //           style: AppTextStyles.bold16.copyWith(
    //             color: Colors.orange.shade300,
    //           ),
    //         ),
    //       ],
    //     ),
    // };
  }
}
