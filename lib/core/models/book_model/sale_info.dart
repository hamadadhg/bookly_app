import 'package:bookly_app/core/models/book_model/retail_price.dart';
import 'package:equatable/equatable.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final String? buyLink;
  final RetailPrice? retailPrice;

  const SaleInfo(
      {this.country,
      this.saleability,
      this.isEbook,
      this.buyLink,
      this.retailPrice});

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
      country: json['country'] as String?,
      saleability: json['saleability'] as String?,
      isEbook: json['isEbook'] as bool?,
      buyLink: json['buyLink'] as String?,
      retailPrice: json['retailPrice'] == null
          ? null
          : RetailPrice.fromJson(json['retailPrice'] as Map<String, dynamic>));

  Map<String, dynamic> toJson() => {
        'country': country,
        'saleability': saleability,
        'isEbook': isEbook,
        'buyLink': buyLink,
        'retailPrice': retailPrice?.toJson(),
      };

  @override
  List<Object?> get props =>
      [country, saleability, isEbook, buyLink, retailPrice];
}
