import 'package:flutter/material.dart';
import 'package:testme/screens/home.dart';

class LandingPage extends StatefulWidget {
  static String path = 'LandingPage';

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final nameInput = TextEditingController();

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
                controller: nameInput,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showAlertDialog(context);
                // if (nameInput == null) {
                //   showAlertDialog(context);
                // } else {}
              },
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
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Don't you have name?"),
    content: Text(
        "This is required to play the game. Please enter your legal name then click save."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
