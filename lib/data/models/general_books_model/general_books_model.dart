import 'package:book_app/domin/entites/GeneralBooksEntity/GeneralBooksEntity.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class GeneralBooksModel extends GeneralBooksEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  GeneralBooksModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
          bookId: id!,
          bookName: volumeInfo!.title!,
          bookAuthor: volumeInfo.authors?.first ?? 'No Author Name Available',
          bookDescription: volumeInfo.description ?? 'No Description Available',
          bookImage: volumeInfo.imageLinks?.thumbnail ?? '',
          bookPublisher: volumeInfo.publisher ?? 'No Publisher Name Available',
          bookPublishedDate:
              volumeInfo.publishedDate ?? 'No Published Date Available',
          bookPreviewer: volumeInfo.contentVersion ?? 'Previewer 0.0',
          bookCategory: volumeInfo.categories?.first ?? 'No Category Available',
          bookPageCount: volumeInfo.pageCount ?? 0,
          bookPreviewLink: volumeInfo.previewLink ?? '',
          bookGooglePlayLink: volumeInfo.infoLink ?? '',
          bookSaleStatus: saleInfo?.saleability ?? 'No Sale Status Available',
          bookPrice: saleInfo?.listPrice?.amount ?? 0.0,
          bookPriceCode: saleInfo?.listPrice?.currencyCode ?? 'EGP',
          bookBuyLink: saleInfo?.buyLink ?? 'No Buy Link Available',
          bookPDFAvailablity: accessInfo?.pdf?.isAvailable ?? false,
        );

  factory GeneralBooksModel.fromJson(Map<String, dynamic> json) {
    return GeneralBooksModel(
      kind: json['kind'] as String?,
      id: json['id'] as String?,
      etag: json['etag'] as String?,
      selfLink: json['selfLink'] as String?,
      volumeInfo: json['volumeInfo'] == null
          ? null
          : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      saleInfo: json['saleInfo'] == null
          ? null
          : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
      accessInfo: json['accessInfo'] == null
          ? null
          : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
      searchInfo: json['searchInfo'] == null
          ? null
          : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo?.toJson(),
        'saleInfo': saleInfo?.toJson(),
        'accessInfo': accessInfo?.toJson(),
        'searchInfo': searchInfo?.toJson(),
      };
}
