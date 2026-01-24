import 'package:book_app/domin/entites/BookEntity/BookEntity.dart';
import 'package:book_app/presentation/features/HomePage/Widgets/CustomFeaturedBooks/CustomFeaturedBooksItem.dart';
import 'package:flutter/material.dart';

class CustomFeaturedBooksListView extends StatelessWidget {
  const CustomFeaturedBooksListView({super.key, required this.books});

  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child:
                CustomFeaturedBooksItem(bookimg: books[index].bookImage ?? ''),
          );
        },
      ),
    );
  }
}
