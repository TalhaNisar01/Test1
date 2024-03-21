import 'package:flutter/material.dart';
import 'package:twenty_one_march_lab/screens/dashboard.dart';

void main() {
  runApp(const MaterialApp(
    title: "Lab-5",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String email="";
  String password="";
//email controller
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


//function//
void userAuth(){
  email=emailController.text;
  password=passwordController.text;

if(email=="hello@gmail.com" && password =="123456"){
  Navigator.push(
   context,MaterialPageRoute(builder: (context)=>Dashboard()) 
  );
}
else{
  print("Invalid Credentials!");
}
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(

              "Email",
              style: TextStyle(fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  
                  ),
                  
              ),
            ),
            Text(
              "Password",
              style: TextStyle(fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter Your Password"
                  ),
              ),
            ),

            TextButton(onPressed:userAuth, child:Text("Login",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 30,
              backgroundColor: Colors.amber,
              
            ),
            ))
          ],
        ),
      ),
    );
  }
}
