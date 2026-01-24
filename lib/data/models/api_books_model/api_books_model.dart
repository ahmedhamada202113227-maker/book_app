import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class ApiBooksModel extends ApiBooksEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  ApiBooksModel({
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
          bookAuthor:
              volumeInfo.authors?.first ?? 'There Is No Author For This Book',
          bookPublisher:
              volumeInfo.publisher ?? 'There Is No Publisher For This Book',
          bookPublishedDate: volumeInfo.publishedDate ??
              'There Is No Published Date For This Book',
          bookDescription: volumeInfo.description ??
              'Sorry , There Is No Description For This Book',
          bookPageCount: volumeInfo.pageCount ?? 0,
          bookCategory: volumeInfo.categories?.first ??
              'There Is No Category For This Book',
          bookPreviewer: volumeInfo.contentVersion ??
              'There Is No Content Version For This Book',
          bookImage: volumeInfo.imageLinks?.thumbnail ?? '',
          bookLagnuage:
              volumeInfo.language ?? 'There Is No Language For This Book',
          bookPreviewLink: volumeInfo.previewLink ??
              'THere Is No Preview Link For This Book',
          bookGooglePlayLink: volumeInfo.infoLink ??
              'There Is No GooglePlay Link For This Book',
          bookSaleStatus: saleInfo?.saleability ?? 'FREE',
          bookPDFAvailablity: accessInfo?.pdf?.isAvailable ?? false,
          bookPrice: saleInfo?.retailPrice?.amount ?? 0,
          bookPriceCode: saleInfo?.retailPrice?.currencyCode ?? 'EGP',
          bookBuyLink:
              saleInfo?.buyLink ?? 'There Is No Buy Link For This Book',
        );

  factory ApiBooksModel.fromJson(Map<String, dynamic> json) => ApiBooksModel(
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
