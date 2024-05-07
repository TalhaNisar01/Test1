/*import 'dart:convert';


import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:http/http.dart' as http;

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(const MyAPP());
}
class MyAPP extends StatefulWidget {
  const MyAPP({super.key});

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {


//list to store products
List<Photos> photosList=[];

//future function to fetch data from api
Future<List<Photos>> getPhotos() async{
  //calling api
final response=await  http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
//parsing the response data//

var data = jsonDecode(response.body.toString());


//checking response status//

if(response.statusCode == 200){
  //passing the data and storing in list//
  for(Map i in data){
    Photos photo=Photos(title: i['title'], url: i['url'], id: i['id']);
   photosList.add(photo);
  }

//returning the list
  return photosList;
}

else{
  return photosList;
}

}

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false
      ),
      home:Scaffold(
        appBar: AppBar(title:  Text('Api Call Example-1376')
        ),
        body: FutureBuilder(
          future: getPhotos(), 
          builder: (BuildContext contex,AsyncSnapshot<List<Photos>> snapshot){
            //checking if api call is completed
            if (snapshot.connectionState== ConnectionState.waiting){
              return Center(child: CircularProgressIndicator(),);
            }
            else{
            return ListView.builder( 
            itemBuilder:((context, index) => ListTile(
              leading: Image.network(snapshot.data![index].url),
              title: Text(snapshot.data![index].id.toString()),
              subtitle: Text(snapshot.data![index].title),
            
            )),
            );
            }
          }
          ),
      ),
    );
  }
}


class Photos{
  final String title;
  final String url;
  final int id;
  
  Photos({required this.title,required this.url,required this.id});

}

*/import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher_string.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Talha Nisar - 1376",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<User>> _userFuture;

  @override
  void initState() {
    super.initState();
    _userFuture = getUserFromApi();
  }

  Future<List<User>> getUserFromApi() async {
    try {
      final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/users"),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        List<User> usersList = [];
        for (Map<String, dynamic> userData in data) {
          User user = User(
            id: userData['id'],
            name: userData['name'],
            userName: userData['username'],
            email: userData['email'],
            address: Address.fromJson(userData['address']),
            phone: userData['phone'],
            website: userData['website'],
            company: Company.fromJson(userData['company']),
          );
          usersList.add(user);
        }
        return usersList;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }

  void launchUrl(Uri url) async {
    if (await canLaunchUrlString(url.toString())) {
      await launchUrlString(url.toString());
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Talha Nisar - 1376",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: FutureBuilder<List<User>>(
        future: _userFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                User user = snapshot.data![index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  elevation: 4, // Add box shadow
                  child: ListTile(
                    title: Text(user.name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Username: ${user.userName}"),
                        Text("Email: ${user.email}"),
                        Text("Address: ${user.address.street}, ${user.address.suite}, ${user.address.city}, ${user.address.zipcode}"),
                        Text("Phone: ${user.phone}"),
                        TextButton(
                          onPressed: () {
                            final Uri url = Uri.parse('https://${user.website}');
                            launchUrl(url);
                          },
                          child: Text('Website: ${user.website}'),
                        ),
                        Text("Company: ${user.company.name} - ${user.company.catchPhrase} - ${user.company.bs}"),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
    );
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
  }
}
