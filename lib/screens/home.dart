import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String path = "HomeSceen";
  //const HomeScreen({Key? key}) : super(key: key);
  String name;
  HomeScreen(this.name);
  final List<String> iteams = [
    'Dart Basic',
    'Dart Advanced',
    'Flutter Basic',
    'Fluter UI',
    'Flutter with Firebase',
    'Flutter Advanced',
    'Error Handling',
    'Interview Questions',
    'Written Questions',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('QUIZ TIME'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
          ],
        ),
        drawer: Drawer(),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Card(
                  color: Colors.orange[400],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          'Welcome!',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '$name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Let\'s play the game. Enjoy your time by learning.',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: iteams.length,
                  itemBuilder: (context, int index) {
                    return ListTile(
                      title: Card(
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${iteams[index]}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              Icon(Icons.play_arrow, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
/*
Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (Context) =>
                          MyLoginPage(_userName.text, _password.text),
                    ),
                  );
*/