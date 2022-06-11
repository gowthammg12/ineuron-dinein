import 'package:dinein/models/food_item.dart';
import 'package:dinein/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class FoodPreviewScreen extends StatefulWidget {
  FoodPreviewScreen({Key? key}) : super(key: key);

  @override
  State<FoodPreviewScreen> createState() => _FoodPreviewScreenState();
}

class _FoodPreviewScreenState extends State<FoodPreviewScreen> {
  final List<FoodItem> _items = [
    FoodItem(
      id: "DOSA",
      name: "Dosa",
      description: "Crispy yummy Indian food with less oil to provide a healthy and more energy everyday",
      price: 30,
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30, bottom: 10),
            child: Text(
              "Food Priority",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: ReorderableListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: _items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = _items[index];
                return ExpansionTile(
                  key: Key(item.id),
                  title: Text(item.name),
                  children: [
                    Text(item.description),
                  ],
                  trailing: SizedBox.shrink(),
                );
              },
              onReorder: (int oldIndex, int newIndex) {
                setState(() {
                  if (oldIndex < newIndex) {
                    newIndex -= 1;
                  }
                  final FoodItem item = _items.removeAt(oldIndex);
                  _items.insert(newIndex, item);
                });
              },
            ),
          ),
          PrimaryButton(
            label: "Confirm",
            onPressed: () {},
            buttonColor: Colors.black,
          )
        ],
      ),
    );
  }
}
