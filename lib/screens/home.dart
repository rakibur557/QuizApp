import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String path = "HomeSceen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://static.vecteezy.com/system/resources/previews/001/576/510/non_2x/abstract-flat-solid-color-bakcground-free-vector.jpg'))),
        ),
      ),
    );
  }
}
