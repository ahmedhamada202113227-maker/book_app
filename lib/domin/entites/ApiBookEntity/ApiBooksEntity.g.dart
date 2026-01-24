// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiBooksEntity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ApiBooksEntityAdapter extends TypeAdapter<ApiBooksEntity> {
  @override
  final int typeId = 2;

  @override
  ApiBooksEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ApiBooksEntity(
      bookId: fields[0] as String,
      bookName: fields[1] as String,
      bookDescription: fields[2] as String?,
      bookAuthor: fields[3] as String?,
      bookPublisher: fields[4] as String?,
      bookPublishedDate: fields[5] as String?,
      bookPageCount: fields[6] as num?,
      bookPreviewer: fields[7] as String?,
      bookImage: fields[8] as String?,
      bookCategory: fields[10] as String?,
      bookPreviewLink: fields[11] as String?,
      bookGooglePlayLink: fields[12] as String?,
      bookSaleStatus: fields[13] as String?,
      bookPrice: fields[14] as num?,
      bookPriceCode: fields[15] as String?,
      bookBuyLink: fields[16] as String?,
      bookPDFAvailablity: fields[17] as bool?,
      bookLagnuage: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ApiBooksEntity obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(1)
      ..write(obj.bookName)
      ..writeByte(2)
      ..write(obj.bookDescription)
      ..writeByte(3)
      ..write(obj.bookAuthor)
      ..writeByte(4)
      ..write(obj.bookPublisher)
      ..writeByte(5)
      ..write(obj.bookPublishedDate)
      ..writeByte(6)
      ..write(obj.bookPageCount)
      ..writeByte(7)
      ..write(obj.bookPreviewer)
      ..writeByte(8)
      ..write(obj.bookImage)
      ..writeByte(9)
      ..write(obj.bookLagnuage)
      ..writeByte(10)
      ..write(obj.bookCategory)
      ..writeByte(11)
      ..write(obj.bookPreviewLink)
      ..writeByte(12)
      ..write(obj.bookGooglePlayLink)
      ..writeByte(13)
      ..write(obj.bookSaleStatus)
      ..writeByte(14)
      ..write(obj.bookPrice)
      ..writeByte(15)
      ..write(obj.bookPriceCode)
      ..writeByte(16)
      ..write(obj.bookBuyLink)
      ..writeByte(17)
      ..write(obj.bookPDFAvailablity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiBooksEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
