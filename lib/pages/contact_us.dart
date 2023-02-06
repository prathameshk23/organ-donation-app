// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/my_textfield.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _feedbackController = TextEditingController();

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  final user = FirebaseAuth.instance.currentUser!;

  Future addUserFeedback(
    String feedback,
  ) async {
    await FirebaseFirestore.instance
        .collection(user.email!)
        .add({'Feedback': feedback});
  }

  Future addFeedback() async {
    addUserFeedback(
      _feedbackController.text.trim(),
    );

    Navigator.pop(context,
        MaterialPageRoute(builder: ((context) => const ContactPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12)),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Contact Us",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),

                    // ignore: prefer_const_constructors
                    Icon(
                      Icons.phone,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "+9999999999",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),

                    // ignore: prefer_const_constructors
                    Icon(
                      Icons.email,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "donationApp@gmail.com",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),

                    // ignore: prefer_const_constructors
                    Icon(
                      Icons.facebook,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "facebook.com/donationApp",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),

                    // ignore: prefer_const_constructors
                    Icon(
                      Icons.whatsapp,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "+9999999999",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),

                Text(
                  "Please Give Your Feedback",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),

                MyTextField(
                  controller: _feedbackController,
                  hintText: 'Your Feedback',
                  obscureText: false,
                ),

                const SizedBox(height: 25),

                // donate button
                GestureDetector(
                  onTap: addFeedback,
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.amber[400],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
