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





Colors.green[400]: This is called using a predefined color from the Material Design color palette with a shade specified by the index. In this case, it selects the 400 shade of green.

Colors.blue[900]: Similar to the previous one, it selects the 900 shade of blue.

const Color(0xFF42A5F5): This is using the hexadecimal format with the alpha (opacity) value followed by the RGB values. It's commonly known as the ARGB format.

const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5): This is also in ARGB format, where the alpha value is specified separately from the RGB values.

const Color.fromARGB(255, 66, 165, 245): Another example of the ARGB format, where the alpha value is given as 255.

Color.fromARGB(255, 14, 106, 181): This is specifying the color using RGB values with opacity.



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
                      ),
                      ),
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



/////////////////////////////////////////////////////////////


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Style Demo'),
        ),
        body: Center(
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(
              fontSize: 24.0, // Font size in logical pixels
              fontWeight: FontWeight.bold, // FontWeight.bold or FontWeight.normal
              fontStyle: FontStyle.normal, // FontStyle.italic or FontStyle.normal
              color: Colors.blue, // Text color
              letterSpacing: 2.5, // Spacing between characters
              wordSpacing: 2.0, // Spacing between words
              fontFamily: 'Roboto', // Font family
              decoration: TextDecoration.underline, // Text decoration
              decorationColor: Colors.green, // Color of text decoration
              decorationStyle: TextDecorationStyle.solid, // Style of text decoration
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(2, 2),
                  blurRadius: 3.0,
                ),
              ], // Text shadows
            ),
          ),
        ),
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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Box Decoration Demo'),
        ),
        body: Center(
          
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue, // Background color of the container
              borderRadius: BorderRadius.circular(20), // Rounded corners
              border: Border.all(
                color: Colors.black, // Border color
                width: 2.0, // Border width
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: Offset(0, 3), // Offset of the shadow
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.green], // Gradient colors
              ),
            ),
            child: Center(
              child: Text(
                'Box Decoration',
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 20.0, // Font size
                  fontWeight: FontWeight.bold, // Font weight
                ),
              ),
            ),
          ),
        ),
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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Demo'),
        ),
        body: Center(
            child: Card(
          elevation: 8,
          margin: EdgeInsets.all(16),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.red, width: 2),
          ),
          shadowColor: Colors.blue,
          clipBehavior: Clip.antiAlias,
          semanticContainer: true,
          //semanticLabel: 'Card with important information',
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text('Hello, Card!'),
          ),
        )),
      ),
    );
  }
}





class MyImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/image.png'), // ImageProvider for your image
              width: 200, // Width of the image
              height: 200, // Height of the image
              fit: BoxFit.cover, // How the image should be inscribed into the space
              alignment: Alignment.center, // Alignment of the image
              repeat: ImageRepeat.repeat, // How the image should repeat
              semanticLabel: 'A sample image', // Description for accessibility
              excludeFromSemantics: false, // Whether to exclude from semantics
              color: Colors.blue, // Color to apply as a tint to the image
              colorBlendMode: BlendMode.srcOver, // Blend mode for applying color
              filterQuality: FilterQuality.high, // Quality of the image filter
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyImageWidget(),
  ));
}


  




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( // Define the theme
        primaryColor: Colors.blue, // Primary color for the app
        //accentColor: Colors.orange, // Accent color for buttons, etc.
        fontFamily: 'Roboto', // Default font family
        textTheme: TextTheme( // Text styles
          headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16.0),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a sample text.',
              style: Theme.of(context).textTheme.headline1,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button'),
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
  @override
  Widget build(BuildContext context) {
    // Define custom theme
    ThemeData customTheme = ThemeData.light().copyWith(
      primaryColor: Colors.green, // Change the primary color
      //accentColor: Colors.yellow, // Change the accent color
      textTheme: TextTheme( // Change text styles
        headline1: TextStyle(fontSize: 28.0),
        bodyText1: TextStyle(fontSize: 18.0),
        headline2:TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
      ),
    );

    return MaterialApp(
      theme: customTheme, // Apply custom theme
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Theme Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a sample text with custom theme.',
              style: Theme.of(context).textTheme.headline2,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button'),
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
  @override
  Widget build(BuildContext context) {
    // Define custom theme
    ThemeData customTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.green, // Change the primary color
      //accentColor: Colors.yellow, // Change the accent color
      textTheme: TextTheme( // Change text styles
        headline1: TextStyle(fontSize: 28.0),
        bodyText1: TextStyle(fontSize: 18.0),
      ),
      appBarTheme: AppBarTheme( // Customize app bar
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
        
      ),
      buttonTheme: ButtonThemeData( // Customize buttons
        buttonColor: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        textTheme: ButtonTextTheme.primary,
      ),
    );

    return MaterialApp(
      theme: customTheme, // Apply custom theme
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Theme Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a sample text with custom theme.',
              style: Theme.of(context).textTheme.headline1,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}








////write a dart code to set up a custom app theme with background color of orange and range of 444 with title midterm exams in capital



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define custom theme
    ThemeData customTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.orange, // Set background color to orange
      primaryColor: Color(0xFF444444), // Set primary color to #444444
      appBarTheme: AppBarTheme( // Customize app bar
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );

    return MaterialApp(
      theme: customTheme, // Apply custom theme
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MIDTERM EXAMS',style: TextStyle(
          
        ),), // Title in capital letters
      ),
      body: Center(

        child: Text(
            'Custom App Theme Example',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}





///write code to style the body text widget with following properties
//set font size to 23
//set font color to purple


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Styling Body Text'),
        ),
        body: Center(
          child: Text(
            'Body Text',
            style: TextStyle(
              fontSize: 23, // Set font size to 23
              color: Colors.purple, // Set font color to purple
            ),
          ),
        ),
      ),
    );
  }
}






//create an application according to the mentioned points below
//1)set the background color of Appbar and scaffold to purple
//2)Load the image from assets and apply box decoration.The image need to fit in the box.
//3)Borders around the image should be in the black color having width of 6 with rounded corners.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple, // Set background color of AppBar to purple
          title: Text('Image App'),
        ),
        backgroundColor: Colors.purple, // Set background color of Scaffold to purple
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black, // Set border color to black
                width: 6, // Set border width to 6
              ),
              borderRadius: BorderRadius.circular(15), // Set rounded corners
              image: DecorationImage(
                image: AssetImage('assets/image.jpg'), // Load image from assets
                fit: BoxFit.cover, // Fit image inside the container
              ),
            ),
          ),
        ),
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, 
      // Set Scaffold background color
      appBar: AppBar(
        title: Text('Background Color Example'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.white, // Set Container background color
          child: Center(
            child: Text(
              'Container with white background',
              style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.red,
              ),
            ),
          ),
        ),
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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Examples'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                 onPressed: () {
                  // Add onPressed action here
                },
                child: Text('Elevated Button'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Button background color
                  onPrimary: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Button border radius
                  ),
                  textStyle: TextStyle(
                    fontSize: 16, // Text font size
                    fontWeight: FontWeight.bold, // Text font weight
                  ),
                  
                ),
              
              ),
              SizedBox(height: 20),
              FloatingActionButton(
                onPressed: () {
                  // Add onPressed action here
                },
                child: Icon(Icons.add), // Icon for the button
                backgroundColor: Colors.green, // Button background color
                //foregroundColor: Colors.white, // Icon color
                elevation: 5, // Elevation of the button
                splashColor: Colors.blue, // Splash color when pressed
                tooltip: 'Floating Action Button', // Tooltip text
              ),
            ],
          ),
        ),
      ),
    );
  }
}




import 'package:flutter_application_1/SecondPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}








void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice Questions',
      debugShowCheckedModeBanner:false,
      home:HomePage()
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Text(
          "Practice Question",
          style: TextStyle(color:Colors.white),
        )
      ),

     body: Center(
      child:Column( 
      children:[
       Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20) ,
         border: Border.all(color: Colors.black54),
         image: DecorationImage(image: NetworkImage("https://www.bing.com/ck/a?!&&p=65768a2b56a148f9JmltdHM9MTcxMTc1NjgwMCZpZ3VpZD0yYmRmN2Y3Ny1mZWFmLTYwMzktMDg3Yi02YjVkZmZkODYxZmQmaW5zaWQ9NTQ1Nw&ptn=3&ver=2&hsh=3&fclid=2bdf7f77-feaf-6039-087b-6b5dffd861fd&u=a1L2ltYWdlcy9zZWFyY2g_cT1pbWFnZXMmaWQ9MkY1OUIxRUZCRUM0MjMzQTExMjMwMkUxRkI3NTdEQzg3NDY3MUZCNCZGT1JNPUlRRlJCQQ&ntb=1"),
         fit: BoxFit.cover)
        ),
       
       ),
     ])
     
     )
     

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Linear Progress Indicator'),
          backgroundColor: Colors.amber,
          bottom: PreferredSize(
          preferredSize: Size.fromHeight(12.0),
            child: LinearProgressIndicator(), // This inserts the linear progress indicator into the app bar
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('Loading...'),
              SizedBox(height: 20),
              LinearProgressIndicator(
                color: Colors.red,
              ), // This creates the linear progress indicator
            ],
          ),
        ),
      ),
    );
  }
}



void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stepper Practice",
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          ),
        body:Center(
          child: Stepper(
            steps: [
              Step(title:Text("Step 1"), content: Text("Content of step 1")),
              Step(title:Text("Step 2"), content: Text("Content of step 2")),
              Step(title:Text("Step 3"), content: Text("Content of step 3")),

            ],
          ),  
        )
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Alert Dialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Alert'),
                  content: Text('This is a simple alert dialog.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Show Alert Dialog'),
        ),
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Bottom Navigation Bar Example'),
      ),
      body: Center(
        child: Text('Page ${_selectedIndex + 1}'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            //backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}





void main(){
  runApp(const MaterialApp(
       title:"Practice Questions",
       debugShowCheckedModeBanner:false,
       home:HomePage()
  )
  );
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar:AppBar(
        backgroundColor: Colors.purple,
        title:Text("Talha Nisar",
        style:TextStyle(color: Colors.amber)
        )
      ),
       body: Center(
        child:Container(
          width:200,
          height:200,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(12),
            border:Border.all(color:Colors.black,width:6),
            image:DecorationImage(image: AssetImage(""),
            fit:BoxFit.cover,
            )
          ),
        )
       )
    );
  }
}





----------------------------------------------------------

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Talha Nisar")
      ),
      body:Center(
        child:ElevatedButton(
          onPressed:(){
           Navigator.push(
            context,MaterialPageRoute(builder:(context)=>SecondPage())
           );
          },
          child:Text("Show Second Page")
        )
      )
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
      title: 'Midterm Exams',
      theme: ThemeData(
        primaryColor:Color(0xFF444444),
        scaffoldBackgroundColor: Colors.orange, // Setting background color to orange
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange,
         // centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 44, // Setting font size to 44
            //textTransform: TextTransform.uppercase, // Convert text to uppercase
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Midterm Exams'.toUpperCase()),
      ),
      body: Center(
        child: Text(
          'Welcome to Midterm Exams!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

}




void main(){
  runApp(MaterialApp(
      title:"Hi!",
      home:HomePage()
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    String email="";
    String pass="";
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

    void userauth() {
  email = emailcontroller.text;
  pass = passwordcontroller.text;
  if (email == "hello@gmail.com" && pass == "12") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage()), // Specify the destination route
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Text("Email"),
          TextField(
           controller:emailcontroller,
           decoration: InputDecoration(
            hintText:"Input your Email",
           ),
          ),
          SizedBox(height:20),
           Text("Password"),
           
          TextField(
           controller:passwordcontroller,
           decoration: InputDecoration(
            hintText:"Input your Password",
           ),
          ),

          TextButton(onPressed:userauth ,child: Text("Login"),)
        ]
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
      title: 'Custom Theme Example',
      theme: ThemeData(
        primaryColor: Colors.green, // Sets the primary color of the app
        //accentColor: Colors.blue, // Sets the accent color
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange, // Sets the background color of the app bar
          foregroundColor: const Color.fromARGB(255, 44, 30, 30), // Sets the color of text and icons in the app bar
          centerTitle: true, // Specifies whether the title should be centered
          titleTextStyle: TextStyle(
            fontSize: 24, // Sets the font size of the app bar title
            fontWeight: FontWeight.bold, // Sets the font weight of the app bar title
          ),
          elevation: 0, // Sets the elevation (shadow) of the app bar
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Theme Example'.toUpperCase()), // Title displayed in the app bar
      ),
      body: Center(
        child: Text(
          'Welcome to Custom Theme Example!'.toUpperCase(),
          style: TextStyle(
            fontSize: 20,
             // Uses the accent color defined in the theme
          ),
        ),
      ),
    );
  }
}




void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    theme:ThemeData(
      primaryColor:Colors.blue ,
      scaffoldBackgroundColor:Colors.black,
      //fontFamily:"Arial",
      appBarTheme:AppBarTheme(
        backgroundColor: Colors.blue,
        centerTitle:true,
        titleTextStyle:TextStyle(
          color:Colors.amber,
          fontSize:30
        )
      ),
      textTheme:TextTheme(
        headline1:TextStyle(color:Colors.amber)
      )
    ),
    home:HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Custom Theme".toUpperCase())),
      body: Center(

      )
    );
  }
}






void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Usman 1361",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:Colors.green,
        //primarySwatch: Colors.amber,
        textTheme: TextTheme(
          
            headline4: TextStyle(fontSize: 48.0, color: Colors.red),
            subtitle2: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                color: Colors.blue)),
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Usman 1361".toUpperCase()),
        ),
        body: Center(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Usman 1361",
                    style: Theme.of(context).textTheme.headline4!
                ),
                  Text(
                    "Usman 1361",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: Colors.red,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}







void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Usman 1361",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.purple,
      //   textTheme: TextTheme(
      //       headline5: TextStyle(fontSize: 20.0, color: Colors.pink),
      //       subtitle2: TextStyle(
      //           fontSize: 36.0,
      //           fontStyle: FontStyle.italic,
      //           color: Colors.blue)),
      //   useMaterial3: false,
      // ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Usman 1361"),
        ),
        body: Theme(
          data: ThemeData(
            primarySwatch: Colors.purple,
            textTheme: TextTheme(
                headline5: TextStyle(fontSize: 20.0, color: Colors.pink),
                subtitle2: TextStyle(
                    fontSize: 36.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue)),
            useMaterial3: false,
          ),
          child: Container(
            decoration: BoxDecoration(color: Colors.purple),
            child: Center(
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Usman 1361",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.yellow,
                            ),
                      ),
                      Text(
                        "Usman 1361",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: Colors.red,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}








void main(){
  runApp( MaterialApp(
    title:"Theme Practice",

    theme:ThemeData(
      primarySwatch:Colors.amber ,
       textTheme:TextTheme(

        headline1:TextStyle(color:Colors.green,fontSize:34),
        headline2:TextStyle(color:Colors.purple,fontSize:45)
       ),

       appBarTheme:AppBarTheme(
        centerTitle:true,
          backgroundColor:Colors.amber,
          titleTextStyle:TextStyle(
            fontSize:34,
            
          )
       )

    ),
    home:HomePage(),

    
  ));
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
         title:Text("Talha Nisar-1376".toUpperCase())
      ),
      body:Center(child: 
      Text("Talha Nisar",
         style:Theme.of(context).textTheme.headline2!.copyWith(
          color:Colors.black,
          fontSize: 20
         )
      ),)
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
      title: 'Text Theme Example',
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color:Colors.blue),
          headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          headline3: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          headline5: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          subtitle2: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          caption: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
          button: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          overline: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Theme Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Headline 1',
              style: Theme.of(context).textTheme.headline1!.copyWith(color:Colors.green,fontSize:20,fontStyle:FontStyle.italic,decoration:TextDecoration.underline,
              decorationColor:Colors.green,
              decorationStyle: TextDecorationStyle.wavy,
              shadows:[
                Shadow(
                  color:Colors.green,
                  blurRadius:24,
                  offset:Offset(1.2,3.4)
                )
              ]
              ),
            ),
            Text(
              'Headline 2',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'Headline 3',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              'Headline 4',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Headline 5',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Headline 6',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Subtitle 1',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'Subtitle 2',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'Body Text 1',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'Body Text 2',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'Caption',
              style: Theme.of(context).textTheme.caption,
            ),
            Text(
              'Button',
              style: Theme.of(context).textTheme.button,
            ),
            Text(
              'Overline',
              style: Theme.of(context).textTheme.overline,
            ),
          ],
        ),
      ),
    );
  }
}






enum AllergySymptom { runnyNose, itching, nasalIrritation, sneezing, wateryEyes }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Allergy Symptom Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AllergySymptomPage(),
    );
  }
}

class AllergySymptomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Allergy Symptoms'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              'Select your allergy symptoms:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // Use DropdownButton to select allergy symptoms
            DropdownButton<AllergySymptom>(
              value: AllergySymptom.runnyNose,
              onChanged: (symptom) {
                print('Selected symptom: $symptom');
              },
              items: AllergySymptom.values.map((symptom) {
                return DropdownMenuItem<AllergySymptom>(
                  value: symptom,
                  child: Text(symptom.toString().split('.').last),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}



// Define an enum for days of the week
enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday
}

// Function to get the full name of a day based on its enum value
String getDayName(DayOfWeek day) {
  switch (day) {
    case DayOfWeek.monday:
      return "Monday";
    case DayOfWeek.tuesday:
      return "Tuesday";
    case DayOfWeek.wednesday:
      return "Wednesday";
    case DayOfWeek.thursday:
      return "Thursday";
    case DayOfWeek.friday:
      return "Friday";
    case DayOfWeek.saturday:
      return "Saturday";
    case DayOfWeek.sunday:
      return "Sunday";
    default:
      return "Invalid day";
  }
}

void main() {
  // Example usage
  DayOfWeek today = DayOfWeek.friday;
  print("Today is ${getDayName(today)}");
}




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SliderDemo(),
    );
  }
}

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Value: ${_value.toStringAsFixed(3)}',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Slider(
              value: _value,
              min: 0.0,
              max: 100.0,
              divisions: 25, //matlab itni wo websites par division kry ga
              onChanged: (newValue) {
                setState(() {
                  _value = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

*/



class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Category",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 3, // Total number of rows (each row contains two cards)
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                child: buildCard(),
              ),
              SizedBox(width: 8), // Adjust spacing between cards
              Expanded(
                child: buildCard(),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Current selected tab
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourites",
          ),
        ],
      ),
    );
  }

  Widget buildCard() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            "https://static.fanpage.it/wp-content/uploads/sites/22/2020/03/iStock-1152247466.jpg",
            height: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Burger Name"),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    onPrimary: Colors.white,
                  ),
                  child: Text("Cart"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CategoryPage(),
  ));
}