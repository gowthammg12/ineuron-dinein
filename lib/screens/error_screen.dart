import 'package:dinein/metadata/assets.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key, this.error}) : super(key: key);

  final String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            Spacer(flex: 2),
            Image.asset(
              Assets.errorSadLogo,
              height: 200,
              width: 200,
            ),
            Spacer(flex: 1),
            Text(
              error ?? "We're extremely sorry for the inconvenience caused. We're are working hard to be back soon",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}
