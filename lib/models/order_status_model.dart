import 'package:dinein/models/food_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_status_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderStatusModel {
  final String tableNumber;

  final FoodItem item;

  OrderStatusModel({
    required this.tableNumber,
    required this.item,
  });

  factory OrderStatusModel.fromJson(Map<String, dynamic> json) => _$OrderStatusModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderStatusModelToJson(this);
}
