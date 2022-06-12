import 'package:flutter/material.dart';

class AddFoodDetails extends StatelessWidget {
  const AddFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Add Food Details",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  fixedSize: MaterialStateProperty.all(Size(double.infinity, 60)),
                ),
                child: Text(
                  "Add Menu",
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  fixedSize: MaterialStateProperty.all(Size(double.infinity, 60)),
                ),
                child: Text(
                  "Make Combo",
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
