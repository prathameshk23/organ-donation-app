// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(height: 20),
                // ignore: prefer_const_constructors
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'What is organ donation?',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      // color: Colors.amber[400],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                Container(
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                      "Organ donation is when you decide to give an organ to save or transform the life of someone else.",
                      style: TextStyle(fontSize: 18)),
                ),

                Container(
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                      "You can donate some organs while you are alive, and this is called living organ donation.However, most organ and tissue donations come from people who have died.",
                      style: TextStyle(fontSize: 18)),
                ),

                SizedBox(
                  height: 10,
                ),
                //did you know box
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.amber[200],
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          // ignore: prefer_const_constructors
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "Did you know?",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  child: Text(
                                    "Not many people die in circumstances that make it possible for them to donate their organs.",
                                    style: TextStyle(
                                      fontSize: 16,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  child: Text(
                                    "This is why every potential donor is precious.",
                                    style: TextStyle(
                                      fontSize: 16,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),

                Divider(
                  color: Colors.grey[500],
                  indent: 20,
                  endIndent: 20,
                  height: 10,
                  thickness: 3,
                ),
                SizedBox(
                  height: 10,
                ),
                //info box

                Text(
                  "What happens after you've gone",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Icon(
                  Icons.note_alt_outlined,
                  size: 100,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                      "If you die in a way that means organ donation is a possibility, a specialist nurse will access the database to see if you had registered a decision.",
                      style: TextStyle(fontSize: 18)),
                ),
                SizedBox(
                  height: 20,
                ),

                Icon(
                  Icons.assignment_ind_rounded,
                  size: 100,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                      "The specialist nurse will discuss your decision with your loved ones, or if you hadn't registered a decision, ask your loved ones if they know your feelings about organ donation.",
                      style: TextStyle(fontSize: 18)),
                ),
                SizedBox(
                  height: 20,
                ),

                Icon(
                  Icons.healing_outlined,
                  size: 100,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                      "If you had registered a decision to donate, or your family inform the specialist nurse that it's what you would have wanted, you could go on to save up to nine lives.",
                      style: TextStyle(fontSize: 18)),
                ),

                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
