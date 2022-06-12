import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Text(
                "Hey Admin, Welcome to Dine In",
                style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  fixedSize: MaterialStateProperty.all(Size(double.infinity, 60)),
                ),
                child: Text(
                  "Table Available",
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
                  "Cook Achievements",
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
                onPressed: () {},
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                fixedSize: MaterialStateProperty.all(Size(double.infinity, 60)),
              ),
              child: Text(
                "Add Food Details",
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
