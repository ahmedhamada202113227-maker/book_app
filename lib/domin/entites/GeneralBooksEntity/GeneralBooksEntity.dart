import 'package:hive/hive.dart';
part 'GeneralBooksEntity.g.dart';

@HiveType(typeId: 1)
class GeneralBooksEntity {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String bookName;
  @HiveField(2)
  final String? bookDescription;
  @HiveField(3)
  final String? bookAuthor;
  @HiveField(4)
  final String? bookPublisher;
  @HiveField(5)
  final String? bookPublishedDate;
  @HiveField(6)
  final num? bookPageCount;
  @HiveField(7)
  final String? bookPreviewer;
  @HiveField(8)
  final String? bookImage;
  @HiveField(9)
  final String? bookCategory;
  @HiveField(10)
  final String? bookPreviewLink;
  @HiveField(11)
  final String? bookGooglePlayLink;
  @HiveField(12)
  final String? bookSaleStatus;
  @HiveField(13)
  final num? bookPrice;
  @HiveField(14)
  final String? bookPriceCode;
  @HiveField(15)
  final String? bookBuyLink;
  @HiveField(16)
  final bool? bookPDFAvailablity;

  GeneralBooksEntity({
    required this.bookId,
    required this.bookName,
    required this.bookAuthor,
    required this.bookDescription,
    required this.bookImage,
    required this.bookPublisher,
    required this.bookPublishedDate,
    required this.bookPreviewer,
    required this.bookCategory,
    required this.bookPageCount,
    required this.bookPreviewLink,
    required this.bookGooglePlayLink,
    required this.bookSaleStatus,
    required this.bookPrice,
    required this.bookPriceCode,
    required this.bookBuyLink,
    required this.bookPDFAvailablity,
  });
}
