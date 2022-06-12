import 'package:dinein/models/food_item.dart';
import 'package:dinein/models/order.dart';
import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  OrderHistoryScreen({Key? key}) : super(key: key);
  final OrderModel orderHistory = OrderModel(
    id: "123",
    totalPrice: 23.5,
    date: DateTime.now(),
    items: [
      FoodItem(
        id: "DOSA",
        name: "Dosa",
        description: "Crispy yummy Indian food with less oil to provide a healthy and more energy everyday",
        price: 30,
        quantity: 1,
      ),
      FoodItem(
        id: "MDOSA",
        name: "Masala Dosa",
        description: "Crispy yummy Indian Masala food with less oil to provide a healthy and more energy everyday",
        price: 30,
      ),
      FoodItem(
        id: "CDOSA",
        name: "Cauliflower Dosa",
        description:
            "Crispy yummy Indian Protein rich food food with less oil to provide a healthy and more energy everyday",
        price: 30,
      ),
      FoodItem(
        id: "BRGR",
        name: "Burger",
        description: "Crispy yummy Indian food with less oil to provide a healthy and more energy everyday",
        price: 30,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("${orderHistory.date.day}/${orderHistory.date.month}/${orderHistory.date.year}"),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Table(
                children: [
                  TableRow(
                    children: [
                      Text("Item"),
                      Text("Quantity"),
                      Text("Cost"),
                    ],
                  ),
                  ...(orderHistory.items ?? [])
                      .map((e) => TableRow(
                            children: [
                              Text(e.name),
                              Text("${e.quantity ?? 0}"),
                              Text("${e.price * (e.quantity ?? 0)}"),
                            ],
                          ))
                      .toList(),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                                padding: const EdgeInsets.only(left: 20.0, right: 20,top: 40
                                ),
                                child: OutlinedButton(
                                  child: Text(
                                    "Download bill",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}
