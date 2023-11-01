import 'package:flutter/material.dart';
import 'package:quicknpl/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //this widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //This is the theme of your application

        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
    );
  }
}
