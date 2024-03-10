import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'lab_4',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Talha Nisar-1376",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              customCard(title: "Title 1", clr: Colors.amber),
              customCard(title: "Title 2", clr: Colors.red),
              customCard(title: "Title 3", clr: Colors.blue),
              customCard(title: "Title 4", clr: Colors.green),
              customCard(title: "Title 5", clr: Colors.orange),
              customCard(title: "Title 6", clr: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customCard({String? title, Color? clr}) {
  return SizedBox(
    height: 150,
    child: Card(
      color: clr!,
      elevation: 50.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipOval(
              child: CircleAvatar(
                radius: 40,
                child: Image.network(
                    'https://images.pexels.com/photos/1371360/pexels-photo-1371360.jpeg?auto=compress&cs=tinysrgb&w=600',
                    fit: BoxFit.cover,
                    ),
                    
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text("Description"),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}