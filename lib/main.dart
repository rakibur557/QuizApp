import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testme/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.path,
      routes: {
        HomeScreen.path: (ctx) => HomeScreen(),
      },
    );
  }
}
