import 'package:equatable/equatable.dart';

class RetailPrice extends Equatable {
  final num? amount;
  const RetailPrice({
    this.amount,
  });
  factory RetailPrice.fromJson(Map<String, dynamic> json) => RetailPrice(
        amount: json['amount'] as num?,
      );
  Map<String, dynamic> toJson() => {
        'amount': amount,
      };
  @override
  List<Object?> get props => [amount];
}
