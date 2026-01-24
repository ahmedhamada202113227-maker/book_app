class Isbn {
  String? isbn10;
  String? isbn13;

  Isbn({this.isbn10, this.isbn13});

  factory Isbn.fromJson(Map<String, dynamic> json) => Isbn(
        isbn10: json['isbn10'] as String?,
        isbn13: json['isbn13'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'isbn10': isbn10,
        'isbn13': isbn13,
      };
}
