import 'package:dinein/models/food_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderModel {
  final String id;
  final DateTime date;
  final double totalPrice;
  final List<FoodItem>? items;

  OrderModel({required this.id, required this.totalPrice, required this.date, this.items});

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}
