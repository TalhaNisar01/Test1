import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatelessWidget {
  final User user;
  final String fullName;
  final String address;
  final String contact;

  const ProfilePage({Key? key, required this.user, required this.fullName, required this.address, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Full Name: ${fullName}'),
            Text('Email: ${user.email ?? "N/A"}'),
            Text('Address: ${address}'),
            Text('Contact: ${contact}'),
          ],
        ),
      ),
    );
  }
}
