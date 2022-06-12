import 'package:json_annotation/json_annotation.dart';

part 'food_item.g.dart';

@JsonSerializable(explicitToJson: true)
class FoodItem {
  final String id;
  final String name;
  final String description;
  final double price;
  final double? discount;
  final String? instructionToChef;
  @JsonKey(defaultValue: 0)
  final int? quantity;

  FoodItem({
    required this.id,
    required this.price,
    required this.name,
    required this.description,
    this.discount,
    this.instructionToChef,
    this.quantity,
  });

  factory FoodItem.fromJson(Map<String, dynamic> json) => _$FoodItemFromJson(json);

  Map<String, dynamic> toJson() => _$FoodItemToJson(this);
}
