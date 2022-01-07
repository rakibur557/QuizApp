import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  static String path = 'LandingPage';
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter Your Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //   color: Colors.white,
                    // )),
                    ),
                keyboardType: TextInputType.text,
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                cursorHeight: 20.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFB71C1C),
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 15,
                ),
              ),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
