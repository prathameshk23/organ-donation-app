import 'package:flutter/material.dart';

import '../components/my_textfield.dart';

class DonaionForm extends StatefulWidget {
  const DonaionForm({super.key});

  @override
  State<DonaionForm> createState() => _DonaionFormState();
}

class _DonaionFormState extends State<DonaionForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),

                // logo
                const Icon(
                  Icons.health_and_safety_sharp,
                  size: 100,
                ),

                const SizedBox(height: 10),

                // welcome back, you've been missed!
                Text(
                  'Pledge an Organ',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // First Name textfield
                const MyTextField(
                  controller: null,
                  hintText: 'First Name',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // Middle Name textfield
                const MyTextField(
                  controller: null,
                  hintText: 'Middle Name',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                // Last Name textfield

                const MyTextField(
                  controller: null,
                  hintText: 'Last Name',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                // Date Of Birth textfield

                const MyTextField(
                  controller: null,
                  hintText: 'Date Of Birth',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                // Gender textfield

                const MyTextField(
                  controller: null,
                  hintText: 'Gender',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                // Organ to donate

                const MyTextField(
                  controller: null,
                  hintText: 'I want to donate',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                //Blood Type textfield
                const MyTextField(
                  controller: null,
                  hintText: 'Blood Group',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                //Medical History textfield
                const MyTextField(
                  controller: null,
                  hintText: 'Medical History',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                //Ethnicity textfield
                const MyTextField(
                  controller: null,
                  hintText: 'Ethnicity',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                //Religin textfield
                const MyTextField(
                  controller: null,
                  hintText: 'Religion',
                  obscureText: false,
                ),

                const SizedBox(height: 25),

                // sign in button
                GestureDetector(
                  onTap: null,
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.amber[400],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        "Donate",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 50),

                // not a member? register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
