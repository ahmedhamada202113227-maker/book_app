import 'package:hive/hive.dart';
part 'ApiBooksEntity.g.dart';

@HiveType(typeId: 2)
class ApiBooksEntity {
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
  final String? bookLagnuage;
  @HiveField(10)
  final String? bookCategory;
  @HiveField(11)
  final String? bookPreviewLink;
  @HiveField(12)
  final String? bookGooglePlayLink;
  @HiveField(13)
  final String? bookSaleStatus;
  @HiveField(14)
  final num? bookPrice;
  @HiveField(15)
  final String? bookPriceCode;
  @HiveField(16)
  final String? bookBuyLink;
  @HiveField(17)
  final bool? bookPDFAvailablity;

  ApiBooksEntity({
    required this.bookId,
    required this.bookName,
    required this.bookDescription,
    required this.bookAuthor,
    required this.bookPublisher,
    required this.bookPublishedDate,
    required this.bookPageCount,
    required this.bookPreviewer,
    required this.bookImage,
    required this.bookCategory,
    required this.bookPreviewLink,
    required this.bookGooglePlayLink,
    required this.bookSaleStatus,
    required this.bookPrice,
    required this.bookPriceCode,
    required this.bookBuyLink,
    required this.bookPDFAvailablity,
    required this.bookLagnuage,
  });
}
