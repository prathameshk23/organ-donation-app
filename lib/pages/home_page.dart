// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:organ_donation_app/pages/contact_us.dart';
import 'package:organ_donation_app/pages/donation_form.dart';
import 'package:organ_donation_app/pages/info_page.dart';
import 'package:organ_donation_app/pages/sign_out.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // const SizedBox(
                        //   height: 80,
                        // ),
                        // name
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello,",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text("Donor",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ))
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => SignOut())));
                          },
                          child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 50),
                  // donate now card
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.yellow[600],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 120,
                            width: 100,
                            child: Icon(Icons.favorite, size: 100),
                            // color: Colors.blueGrey[300],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Organ Donation",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "You could save up to nine lives",
                                  style: TextStyle(
                                    fontSize: 18,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                const DonaionForm())));
                                  },
                                  child: Container(
                                      width: 150,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text("Pledge an organ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //what is organ donation
                  SizedBox(height: 50),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            // color: Colors.grey[200],
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              Icons.question_mark_rounded,
                              size: 100,
                              color: Colors.amber[500],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "What is Organ Donation?",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Find out what's involved, who you could help and what choices you could make.",
                                  style: TextStyle(
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                InfoPage())));
                                  },
                                  child: Container(
                                      width: 150,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text("Let's Go",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 50),
                  // donate now card
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.yellow[600],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 120,
                            width: 100,
                            child: Icon(Icons.phone, size: 100),
                            // color: Colors.blueGrey[300],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Contact Us",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Get in touch with us.",
                                  style: TextStyle(
                                    fontSize: 18,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                const ContactPage())));
                                  },
                                  child: Container(
                                      width: 150,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text("Contact",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // SizedBox(
                  //   height: 15,
                  // ),

                  SizedBox(
                    height: 100,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExpansionTile(
                      title: Text(
                        "As a donor, you will be treated with dignity and respect.",
                        style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                              "The organ donation process involves a specialist team who ensure that donors are treated with the greatest care and respect during the removal of organs and tissue for donation. The retrieval of organs takes place in a normal operating theatre under sterile conditions, and is carried out by specialist surgeons. Afterwards the surgical incision is carefully closed and covered by a dressing in the normal way.Only those organs and tissue specified by the donor and agreed with the family will be removed.Your faith and beliefs will always be respected."),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 5),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExpansionTile(
                      title: Text(
                        "Why talk to your loved ones?",
                        style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                              "Your family can override your decision if they don't know what you want.Each year, hundreds of opportunities for transplants are missed because families aren't sure what to do.Your family will always be consulted about whether you wanted to be an organ donor or not, and clinicians will never proceed with organ donation if your family or loved ones object."),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 5),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExpansionTile(
                      title: Text(
                        "Your body will always be returned to your family after donation",
                        style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                              "The donation operation is performed as soon as possible after death.After donation, the body is always returned to the family of the deceased in the same way as any death in a hospital where donation has not taken place.Families are given the opportunity to spend time with their loved one after the operation if they wish."),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 5),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExpansionTile(
                      title: Text(
                        "You can nominate someone to make a decision on your behalf",
                        style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                              "You may not want to make an organ donation decision yourself. You may have specific instructions, or have concerns about your family not supporting your decision. You can nominate up to two representatives to make the final decision about organ donation on your behalf.If you die in circumstances where donation is possible, your appointed representative(s) will be asked if your organs should be donated."),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 5),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExpansionTile(
                      title: Text(
                        "Organs cannot be bought or sold",
                        style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                              "Organ donation is a precious gift that saves lives."),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 20)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
