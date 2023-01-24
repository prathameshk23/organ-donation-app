// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Column(children: [
                Text(
                  'Signed In',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  color: Colors.blue[600],
                  child: Text('Sign Out'),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
