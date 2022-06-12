// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderStatusModel _$OrderStatusModelFromJson(Map<String, dynamic> json) => OrderStatusModel(
      tableNumber: json['tableNumber'] as String,
      item: FoodItem.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderStatusModelToJson(OrderStatusModel instance) => <String, dynamic>{
      'tableNumber': instance.tableNumber,
      'item': instance.item.toJson(),
    };
