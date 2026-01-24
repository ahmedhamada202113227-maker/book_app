// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GeneralBooksEntity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GeneralBooksEntityAdapter extends TypeAdapter<GeneralBooksEntity> {
  @override
  final int typeId = 1;

  @override
  GeneralBooksEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GeneralBooksEntity(
      bookId: fields[0] as String,
      bookName: fields[1] as String,
      bookAuthor: fields[3] as String?,
      bookDescription: fields[2] as String?,
      bookImage: fields[8] as String?,
      bookPublisher: fields[4] as String?,
      bookPublishedDate: fields[5] as String?,
      bookPreviewer: fields[7] as String?,
      bookCategory: fields[9] as String?,
      bookPageCount: fields[6] as num?,
      bookPreviewLink: fields[10] as String?,
      bookGooglePlayLink: fields[11] as String?,
      bookSaleStatus: fields[12] as String?,
      bookPrice: fields[13] as num?,
      bookPriceCode: fields[14] as String?,
      bookBuyLink: fields[15] as String?,
      bookPDFAvailablity: fields[16] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, GeneralBooksEntity obj) {
    writer
      ..writeByte(17)
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
      ..write(obj.bookCategory)
      ..writeByte(10)
      ..write(obj.bookPreviewLink)
      ..writeByte(11)
      ..write(obj.bookGooglePlayLink)
      ..writeByte(12)
      ..write(obj.bookSaleStatus)
      ..writeByte(13)
      ..write(obj.bookPrice)
      ..writeByte(14)
      ..write(obj.bookPriceCode)
      ..writeByte(15)
      ..write(obj.bookBuyLink)
      ..writeByte(16)
      ..write(obj.bookPDFAvailablity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeneralBooksEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
