import 'package:dinein/models/food_item.dart';
import 'package:dinein/models/order_status_model.dart';
import 'package:flutter/material.dart';

enum OrderStatus {
  PENDING_ORDERS,
  PICKED_ORDERS,
  COMPLETED_ORDERS,
}

class OrderStatusScreen extends StatelessWidget {
  OrderStatusScreen({Key? key, required this.orderStatus}) : super(key: key);

  final OrderStatus orderStatus;
  final List<OrderStatusModel> ordersStatusModel = [
    OrderStatusModel(
      tableNumber: "01",
      item: FoodItem(
        id: "BRGR",
        name: "Burger",
        description: "Crispy yummy Indian food with less oil to provide a healthy and more energy everyday",
        price: 30,
      ),
    ),
    OrderStatusModel(
      tableNumber: "01",
      item: FoodItem(
        id: "BRGR",
        name: "Burger",
        description: "Crispy yummy Indian food with less oil to provide a healthy and more energy everyday",
        price: 30,
      ),
    ),
    OrderStatusModel(
      tableNumber: "01",
      item: FoodItem(
        id: "BRGR",
        name: "Burger",
        description: "Crispy yummy Indian food with less oil to provide a healthy and more energy everyday",
        price: 30,
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.5,
        title: Text(
          orderStatus.name.replaceFirst("_", " "),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.separated(
        itemCount: ordersStatusModel.length,
        itemBuilder: (context, index) {
          final orderStatus = ordersStatusModel[index];
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
              top: 10,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Table No: ${orderStatus.tableNumber}"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Orders:"),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Table(
                          children: [
                            TableRow(
                              children: [
                                Text("Item"),
                                Text("Quantity"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text(orderStatus.item.name),
                                Text("${orderStatus.item.quantity ?? 0}"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 1,
          );
        },
      ),
    );
  }
}
