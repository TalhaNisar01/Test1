import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Portfolio App',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
        padding: const EdgeInsets.only(top:100.0, left: 20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(radius: 60,),
                Column(
                  children: <Widget>[
                    Text("Name"),
                    Text("Designation")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
