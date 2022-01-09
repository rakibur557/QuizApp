import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testme/screens/details.dart';
import 'package:testme/screens/home.dart';
import 'package:testme/screens/landingpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/logo.png'),
            CircularProgressIndicator(),
            Text('Developed by Rakib'),
          ],
        ),
        nextScreen: LandingPage(),
        splashIconSize: 1000.0,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.path: (ctx) => HomeScreen(''),
        Details.path: (ctx) => Details(),
      },
    );
  }
}
