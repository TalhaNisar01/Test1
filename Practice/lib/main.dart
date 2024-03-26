// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
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



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practice",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Talha"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        //color: Colors.blue,
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Text("Hi"),
      ),
    );
  }
}



void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container example"),
        ),
        body: Container(
          height: 200,
          width: double.infinity,
          color: Colors.purple,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          transform: Matrix4.rotationZ(0.4),
          child: const Text("Hello! i am inside a container!",
              style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}




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
      appBar: AppBar(title: const Text('GeeksforGeeks')),
    body: const Center(
      child: Text(
        "Welcome to GeeksforGeeks!!!",
        style: TextStyle(
          color: Colors.black,
          fontSize: 40.0,
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor:Colors.blue,
      elevation: 10.0,
      child: Icon(
        Icons.add,
        color: Colors.amber,
      ),
      onPressed:(){

      },
    ),
    );
  }
}





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Example'),
      ),
      drawer: Drawer(
        child: ListView(
          children:  <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color:Colors.amber,width:2),
                
              ),
              child: Text(
                'Welcome to Drawer Section!!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              leading: Icon(Icons.people),
            ),
            ListTile(
              title: Text('Item 2'),
              leading: Icon(Icons.mail),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}






void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationBar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar Example'),
      ),
      body: Center(
        child: Text('Current Index: $_currentIndex'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}







void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title:Text(
            "Flutter Drawer Demo",style: TextStyle(
              color: Colors.white
            ),
          )
        ),

        body:Center(child: Text(
          "A drawer is an invisible sde screen"
        ),),
        drawer: Drawer(
          child: ListView(
            children: [ 
               DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                "Drawer Header",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              
            ),

            ListTile(
              title: Text("Account"),
              leading: Icon(Icons.account_balance),
              onTap: (){
                Navigator.pop(context);
              }
            ),
            

            ],
          ),
        ),

      ),
    );
  }
}



void main() {
  runApp(gfgApp()); //MaterialApp
}
 
MaterialApp gfgApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("GeeksforGeeks"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.greenAccent[400],
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
      ), //AppBar
      body: const Center(
        child: Text(
          "Geeksforgeeks",
          style: TextStyle(fontSize: 24),
        ), //Text
      ), //Center
    ), //Scaffold
    debugShowCheckedModeBanner: false, //Removing Debug Banner
  );
}


*/








