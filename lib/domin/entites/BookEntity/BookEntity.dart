import 'package:hive/hive.dart';
part 'BookEntity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final num bookId;
  @HiveField(1)
  final String bookTitle;
  @HiveField(2)
  final String bookAuthor;
  @HiveField(3)
  final String? bookDescription;
  @HiveField(4)
  final String? bookImage;
  @HiveField(5)
  final num? bookPrice;
  @HiveField(6)
  final num? bookRating;

  BookEntity({
    required this.bookId,
    required this.bookTitle,
    required this.bookAuthor,
    required this.bookDescription,
    required this.bookImage,
    required this.bookPrice,
    required this.bookRating,
  });
}
