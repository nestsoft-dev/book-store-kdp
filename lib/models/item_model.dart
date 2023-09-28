// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ItemModel {
  String name;
  int quantity;
  String price;
  String currency;
  ItemModel({
    required this.name,
    required this.quantity,
    required this.price,
    this.currency = "USD",
  });

  ItemModel copyWith({
    String? name,
    int? quantity,
    String? price,
    String? currency,
  }) {
    return ItemModel(
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      currency: currency ?? this.currency,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'quantity': quantity,
      'price': price,
      'currency': currency,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      name: map['name'] as String,
      quantity: map['quantity'] as int,
      price: map['price'] as String,
      currency: map['currency'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ItemModel(name: $name, quantity: $quantity, price: $price, currency: $currency)';
  }

  @override
  bool operator ==(covariant ItemModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.quantity == quantity &&
        other.price == price &&
        other.currency == currency;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        quantity.hashCode ^
        price.hashCode ^
        currency.hashCode;
  }
}
