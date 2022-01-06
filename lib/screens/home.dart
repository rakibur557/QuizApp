import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String path = "HomeSceen";
  //const HomeScreen({Key? key}) : super(key: key);
  final List<String> iteams = [
    'Dart Basic',
    'Dart Advanced'
        'Flutter Basic',
    'Fluter UI',
    'Flutter with Firebase',
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
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
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
                          'Your Name Here',
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
              Expanded(
                child: ListView.builder(
                  itemCount: iteams.length,
                  itemBuilder: (context, int index) {
                    return ListTile(
                      title: Card(
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${iteams[index]}',
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.play_arrow),
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

// class CustomListTile extends StatelessWidget {
//   const CustomListTile({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ,
//     );
//   }
// }