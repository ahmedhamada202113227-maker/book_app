import 'package:book_app/domin/entites/BookEntity/BookEntity.dart';

import 'buy_link.dart';
import 'isbn.dart';

class BookModel extends BookEntity {
  num? rank;
  String? price;
  String? title;
  String? author;
  String? publisher;
  String? description;
  String? imageUrl;
  String? bookReviewLink;
  num? rankLastWeek;
  num? weeksOnList;
  num? asterisk;
  num? dagger;
  String? primaryIsbn10;
  String? primaryIsbn13;
  String? contributor;
  String? contributorNote;
  num? bookImageWidth;
  num? bookImageHeight;
  String? amazonProductUrl;
  String? ageGroup;
  String? firstChapterLink;
  String? sundayReviewLink;
  String? articleChapterLink;
  List<Isbn>? isbns;
  List<BuyLink>? buyLinks;
  String? bookUri;

  BookModel({
    this.rank,
    this.rankLastWeek,
    this.weeksOnList,
    this.asterisk,
    this.dagger,
    this.primaryIsbn10,
    this.primaryIsbn13,
    this.publisher,
    this.description,
    this.price,
    this.title,
    this.author,
    this.contributor,
    this.contributorNote,
    this.imageUrl,
    this.bookImageWidth,
    this.bookImageHeight,
    this.amazonProductUrl,
    this.ageGroup,
    this.bookReviewLink,
    this.firstChapterLink,
    this.sundayReviewLink,
    this.articleChapterLink,
    this.isbns,
    this.buyLinks,
    this.bookUri,
  }) : super(
          bookId: rank!,
          bookTitle: title!,
          bookAuthor: author ?? 'no author',
          bookDescription: description ?? 'no description',
          bookImage: imageUrl ?? 'no image',
          bookPrice: 0.0,
          bookRating: 0.99,
        );

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        rank: json['rank'] as num?,
        publisher: json['publisher'] as String?,
        description: json['description'] as String?,
        price: json['price'] as String?,
        title: json['title'] as String?,
        author: json['author'] as String?,
        imageUrl: json['book_image'] as String?,
        bookReviewLink: json['book_review_link'] as String?,
        rankLastWeek: json['rank_last_week'] as num?,
        weeksOnList: json['weeks_on_list'] as num?,
        asterisk: json['asterisk'] as num?,
        dagger: json['dagger'] as num?,
        primaryIsbn10: json['primary_isbn10'] as String?,
        primaryIsbn13: json['primary_isbn13'] as String?,
        contributor: json['contributor'] as String?,
        contributorNote: json['contributor_note'] as String?,
        bookImageWidth: json['book_image_width'] as num?,
        bookImageHeight: json['book_image_height'] as num?,
        amazonProductUrl: json['amazon_product_url'] as String?,
        ageGroup: json['age_group'] as String?,
        firstChapterLink: json['first_chapter_link'] as String?,
        sundayReviewLink: json['sunday_review_link'] as String?,
        articleChapterLink: json['article_chapter_link'] as String?,
        isbns: (json['isbns'] as List<dynamic>?)
            ?.map((e) => Isbn.fromJson(e as Map<String, dynamic>))
            .toList(),
        buyLinks: (json['buy_links'] as List<dynamic>?)
            ?.map((e) => BuyLink.fromJson(e as Map<String, dynamic>))
            .toList(),
        bookUri: json['book_uri'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'rank': rank,
        'rank_last_week': rankLastWeek,
        'weeks_on_list': weeksOnList,
        'asterisk': asterisk,
        'dagger': dagger,
        'primary_isbn10': primaryIsbn10,
        'primary_isbn13': primaryIsbn13,
        'publisher': publisher,
        'description': description,
        'price': price,
        'title': title,
        'author': author,
        'contributor': contributor,
        'contributor_note': contributorNote,
        'book_image': bookImage,
        'book_image_width': bookImageWidth,
        'book_image_height': bookImageHeight,
        'amazon_product_url': amazonProductUrl,
        'age_group': ageGroup,
        'book_review_link': bookReviewLink,
        'first_chapter_link': firstChapterLink,
        'sunday_review_link': sundayReviewLink,
        'article_chapter_link': articleChapterLink,
        'isbns': isbns?.map((e) => e.toJson()).toList(),
        'buy_links': buyLinks?.map((e) => e.toJson()).toList(),
        'book_uri': bookUri,
      };
}
