import 'package:dinein/models/order.dart';
import 'package:flutter/material.dart';

class OrderHistoriesScreen extends StatelessWidget {
  OrderHistoriesScreen({Key? key}) : super(key: key);

  final List<OrderModel> orderHistory = [
    OrderModel(id: "123", totalPrice: 23.5, date: DateTime.now()),
    OrderModel(id: "121", totalPrice: 231.5, date: DateTime.now().add(Duration(days: 5))),
    OrderModel(id: "122", totalPrice: 123.5, date: DateTime.now().subtract(Duration(days: 5))),
    OrderModel(id: "124", totalPrice: 233.5, date: DateTime.now().add(Duration(days: 10))),
    OrderModel(id: "125", totalPrice: 230, date: DateTime.now().subtract(Duration(days: 10))),
  ];

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
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 20,
              ),
              child: Text(
                "Previous orders",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: orderHistory.length,
                itemBuilder: (context, index) {
                  final order = orderHistory[index];
                  return Column(
                    children: [
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text("${order.date.day}/${order.date.month}/${order.date.year}"),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "-",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                child: Text(
                                  "Total Amount",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 6),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "${order.totalPrice}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: OutlinedButton(
                                child: Text(
                                  "View order",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, right: 20),
                              child: OutlinedButton(
                                child: Text(
                                  "Download bill",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
