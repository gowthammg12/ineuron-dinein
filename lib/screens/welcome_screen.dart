import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dinein/models/category.dart';
import 'package:dinein/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final categories = [
    CategoryModel(category: "Non veg", id: "NV"),
    CategoryModel(category: "Veg", id: "VEG"),
    CategoryModel(category: "Chinese", id: "CSE"),
    CategoryModel(category: "Continental", id: "CON"),
    CategoryModel(category: "Spicy", id: "SPY"),
  ];
  WelcomeScreen({Key? key}) : super(key: key);

  final List<Color> colorizeColors = [
    Colors.red.shade700,
    Colors.red.shade200,
    Colors.white,
    Colors.red,
  ];

  final TextStyle colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Welcome Gowtham",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.history,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              icon: Icon(
                Icons.fastfood,
                color: Colors.black,
                size: 26,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        "Welcome to",
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          height: 1.4,
                          wordSpacing: 8,
                        ),
                        colors: colorizeColors,
                        speed: Duration(milliseconds: 250),
                      ),
                    ],
                    totalRepeatCount: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Dine - In",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      height: 1.4,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                  child: Text(
                    "What would you like to eat??",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: categories
                        .map((category) => Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Text(
                                category.category,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          PrimaryButton(
            label: "View Menu",
            onPressed: () {},
            buttonColor: Colors.black,
          )
        ],
      ),
    );
  }
}
