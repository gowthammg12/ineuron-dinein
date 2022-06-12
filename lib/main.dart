import 'package:dinein/bloc/login/bloc.dart';
import 'package:dinein/repository/login.dart';
import 'package:dinein/screens/auth/login.dart';
import 'package:dinein/screens/auth/user_detail.dart';
import 'package:dinein/screens/error_screen.dart';
import 'package:dinein/screens/feedback_screen.dart';
import 'package:dinein/screens/food_priority.dart';
import 'package:dinein/screens/welcome_screen.dart';
import 'package:dinein/utils/routes.dart';
import 'package:dinein/utils/timer_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc(LoginRepository())),
        BlocProvider(create: (context) => TimerCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.login,
        onGenerateRoute: Routes.onGenerateRoute,
      ),
    );
  }
}
