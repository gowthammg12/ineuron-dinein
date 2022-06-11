import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCCP70FohE4bqp-MPW9P-mz8mRLATEhhQo",
      appId: "1:345639090472:web:1639ba84bad193dfd1b81d",
      messagingSenderId: "345639090472",
      projectId: "ineuron-dineapp",
      authDomain: "ineuron-dineapp.firebaseapp.com",
      storageBucket: "ineuron-dineapp.appspot.com",
    ),
  );
  setPathUrlStrategy();
  runApp(const DineInApp());
}

class DineInApp extends StatelessWidget {
  const DineInApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
