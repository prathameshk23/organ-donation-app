import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

import '../components/my_textfield.dart';

class DonaionForm extends StatefulWidget {
  const DonaionForm({super.key});

  @override
  State<DonaionForm> createState() => _DonaionFormState();
}

class _DonaionFormState extends State<DonaionForm> {
  //text controllers
  final _firstNameController = TextEditingController();
  final _middleNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _dateController = TextEditingController();
  final _genderController = TextEditingController();
  final _organController = TextEditingController();
  final _bloodController = TextEditingController();
  final _medicalHistoryController = TextEditingController();
  final _ethnicityController = TextEditingController();
  final _religonController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _middleNameController.dispose();
    _lastNameController.dispose();
    _dateController.dispose();
    _genderController.dispose();
    _organController.dispose();
    _bloodController.dispose();
    _medicalHistoryController.dispose();
    _ethnicityController.dispose();
    _religonController.dispose();
    super.dispose();
  }

  final user = FirebaseAuth.instance.currentUser!;

  Future addUserDetails(
      String firstName,
      String middleName,
      String lastName,
      String dateOfBirth,
      String gender,
      String organDonated,
      String bloodType,
      String medicalHistory,
      String ethnicity,
      String religion) async {
    await FirebaseFirestore.instance.collection(user.email!).add({
      'first name': firstName,
      'middle name': middleName,
      'last name': lastName,
      'date of birth': dateOfBirth,
      'gender': gender,
      'donated organ': organDonated,
      'blood type': bloodType,
      'medical history': medicalHistory,
      'ethnicity': ethnicity,
      'religion': religion,
    });
  }

  // Future sendEmail() async {
  //   // print(user.email!);
  //   final Email emailSend = Email(
  //     body: 'haha the email was sent',
  //     subject: 'This is a test email',
  //     recipients: [user.email!],
  //     isHTML: false,
  //   );

  //   await FlutterEmailSender.send(emailSend);
  // }

  Future addDetail() async {
    addUserDetails(
      _firstNameController.text.trim(),
      _middleNameController.text.trim(),
      _lastNameController.text.trim(),
      _dateController.text.trim(),
      _genderController.text.trim(),
      _organController.text.trim(),
      _bloodController.text.trim(),
      _medicalHistoryController.text.trim(),
      _ethnicityController.text.trim(),
      _religonController.text.trim(),
    );

    // sendEmail();

    Navigator.pop(context,
        MaterialPageRoute(builder: ((context) => const DonaionForm())));
  }

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

                // text
                Text(
                  'Pledge an Organ',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // First Name textfield
                MyTextField(
                  controller: _firstNameController,
                  hintText: 'First Name',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // Middle Name textfield
                MyTextField(
                  controller: _middleNameController,
                  hintText: 'Middle Name',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                // Last Name textfield

                MyTextField(
                  controller: _lastNameController,
                  hintText: 'Last Name',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                // Date Of Birth textfield

                MyTextField(
                  controller: _dateController,
                  hintText: 'Date Of Birth',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                // Gender textfield

                MyTextField(
                  controller: _genderController,
                  hintText: 'Gender',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                // Organ to donate

                MyTextField(
                  controller: _organController,
                  hintText: 'I want to donate',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                //Blood Type textfield
                MyTextField(
                  controller: _bloodController,
                  hintText: 'Blood Group',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                //Medical History textfield
                MyTextField(
                  controller: _medicalHistoryController,
                  hintText: 'Medical History',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                //Ethnicity textfield
                MyTextField(
                  controller: _ethnicityController,
                  hintText: 'Ethnicity',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                //Religin textfield
                MyTextField(
                  controller: _religonController,
                  hintText: 'Religion',
                  obscureText: false,
                ),

                const SizedBox(height: 25),

                // donate button
                GestureDetector(
                  onTap: addDetail,
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
