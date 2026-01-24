import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/presentation/features/DetailsPage/Widgets/CustomBKContainerOfDetailsBook/CustomStackOfPhotoAndTilteBook.dart';
import 'package:flutter/material.dart';

class CustomBKContainerOfDetailsBook extends StatelessWidget {
  const CustomBKContainerOfDetailsBook({
    super.key,
    required this.apiBooksEntity,
  });

  final ApiBooksEntity apiBooksEntity;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, left: 12.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: height * 0.31,
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
              ),
            ),
          ),
          CustomStackOfPhotoAndTilteBook(
            apiBooksEntity: apiBooksEntity,
            height: height,
          ),
        ],
      ),
    );
  }
}
