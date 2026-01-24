class BuyLink {
  String? name;
  String? url;

  BuyLink({this.name, this.url});

  factory BuyLink.fromJson(Map<String, dynamic> json) => BuyLink(
        name: json['name'] as String?,
        url: json['url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };
}
