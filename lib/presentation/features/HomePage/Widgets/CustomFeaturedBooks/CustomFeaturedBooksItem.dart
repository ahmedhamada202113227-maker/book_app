import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomFeaturedBooksItem extends StatelessWidget {
  const CustomFeaturedBooksItem({super.key, required this.bookimg});
  final String bookimg;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.23,
        child: AspectRatio(
            aspectRatio: 3 / 4,
            child: SizedBox(
              child: CachedNetworkImage(
                imageUrl: bookimg,
                fit: BoxFit.fill,
              ),
            )),
      ),
    );
  }
}
