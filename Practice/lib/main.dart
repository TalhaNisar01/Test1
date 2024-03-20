// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
            height:500,
            color: Colors.grey,
            child: Column(
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Text(
                    "Talha",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 40.0,
                        backgroundColor: Colors.amber),
                  ),
                ),
                Text(
                  "Talha",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 40.0,
                      backgroundColor: Colors.amber),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children:[
                 Text(
                  "Talha",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 40.0,
                      backgroundColor: Colors.amber),
                   ),
                   Text(
                  "Talha",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 40.0,
                      backgroundColor: Colors.amber),
                   ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}




void main() {
  Color selection = Colors.green[400]!; 
  Color selection2 = Colors.blue[900]!;

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Color Selection Demo'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: selection,
          child: Center(
            child: Text(
              'Mid-range Green',
              style: TextStyle(color: selection2),
            ),
          ),
        ),
      ),
    ),
  ));
}



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color c1 = const Color(0xFF42A5F5); // ARGB format
    Color c2 = const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5); // ARGB format
    Color c3 = const Color.fromARGB(255, 66, 165, 245); // ARGB format
    Color c4 = Color.fromARGB(255, 14, 106, 181); // RGB format with opacity

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color Examples'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: c1,
              ),
              SizedBox(height: 20),
              Container(
                width: 100,
                height: 100,
                color: c2,
              ),
              SizedBox(height: 20),
              Container(
                width: 100,
                height: 100,
                color: c3,
              ),
              SizedBox(height: 20),
              Container(
                width: 100,
                height: 100,
                color: c4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class DemoPage extends StatelessWidget {
   launchURL() {
     launch('https://flutter.dev');
     }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: ElevatedButton(
           onPressed: launchURL,
           child: Text('Show Flutter homepage'),
           ),
           ),
           );
           }
           }


void main() {
  runApp(MaterialApp(
    home: DemoPage(),
  ));
}



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Components Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DropdownDemo(),
    );
  }
}

class DropdownDemo extends StatefulWidget {
  @override
  _DropdownDemoState createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  String dropdownValue = 'One'; // Define a variable to hold the selected value
  Color selection = Colors.green[400]!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Components Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue) {
                // Update the selected value when an item is clicked
                if (newValue != null) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                }
              },
              items: <String>['One', 'Two', 'Three', 'Four', 'Five']
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style: TextStyle(
                        color: selection,
                      ),),
                    ),
                  ).toList(),
            ),

            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
            ),


            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
            ),
            PopupMenuButton<String>(
              onSelected: (String value) {},
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'Option 1',
                  child: Text('Option 1'),
                ),
                PopupMenuItem<String>(
                  value: 'Option 2',
                  child: Text('Option 2'),
                ),
                PopupMenuItem<String>(
                  value: 'Option 3',
                  child: Text('Option 3'),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}

*/


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practice",
      
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Talha"
        ),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        color: Colors.blue,
        padding: EdgeInsets.all(20),
        alignment: Alignment.centerLeft,
        child: Text("Hi"),
      ),
    );
  }
}

