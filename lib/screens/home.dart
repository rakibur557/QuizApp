import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String path = "HomeSceen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Quiz App'.toUpperCase()),
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
