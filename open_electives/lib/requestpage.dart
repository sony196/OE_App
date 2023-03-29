import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:open_electives/checkboxstate.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List<String> boolean = [];

class requestpage extends StatefulWidget {
  final String email;
  //const requestpage({Key? key}) : super(key: key);
  requestpage({required this.email});

  @override
  State<requestpage> createState() => _requestpageState();
}

class _requestpageState extends State<requestpage> {
  final _firestore = FirebaseFirestore.instance;
  late checkboxstate checkbox;
  Map<String, int> mapping = {
    'startup management[MBA]': 0,
    'Fundamentals of Management[MBA]': 0,
    'Non-conventional energy sources': 0,
    ' Basics of Material Engineering': 0,
    'Fundamentals of Digital Electronics': 0,
    'Concepts of ThermoDynamics': 0,
    'Anatomy and Physiology for engineers': 0,
    'Hospital management and information system': 0,
    'Green Building Technologies': 0,
    'Synthesis and characterization of nanomaterials': 0
  };

  List<String> arr = [];
  final notifications = [
    checkboxstate(title: 'startup management[MBA]'),
    checkboxstate(title: 'Fundamentals of Management[MBA]'),
    checkboxstate(title: 'Non-conventional energy sources'),
    checkboxstate(title: ' Basics of Material Engineering'),
    checkboxstate(title: 'Fundamentals of Digital Electronics'),
    checkboxstate(title: 'Concepts of ThermoDynamics'),
    checkboxstate(title: 'Anatomy and Physiology for engineers'),
    checkboxstate(title: 'Hospital management and information system'),
    checkboxstate(title: 'Green Building Technologies'),
    checkboxstate(title: 'Synthesis and characterization of nanomaterials'),
  ];

  Object? get email => email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Course Request",
          style: TextStyle(
            fontFamily: 'Finlandica',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ...notifications.map(buildsinglecheckbox).toList(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 250, 10, 17),
              child: FlatButton(
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                  color: Colors.green,
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  //TODO:the conditions could be set for every subject and save the boolean data into firebase
                  //TODO: The structure of the firebase collection could be email and boolean array of particular student
                  onPressed: () {
                    if (boolean.contains('startup management[MBA]') &&
                        mapping['startup management[MBA]']! > 20) {
                      int ele = mapping['startup management[MBA]'] =
                          (mapping['startup management[MBA]']! + 1)!;
                    } else if (boolean.contains('startup management[MBA') &&
                        mapping['startup management[MBA]']! <= 20) {
                      boolean.remove('startup management[MBA]');
                    } else if (boolean
                            .contains('Fundamentals of Management[MBA]') &&
                        mapping['Fundamentals of Management[MBA]']! > 20) {
                      int ele = mapping['Fundamentals of Management[MBA]'] =
                          (mapping['Fundamentals of Management[MBA]']! + 1)!;
                    }

                    _firestore.collection('open_electives').add({
                      'email': email,
                      'subjects': boolean,
                      'allocated_subject': boolean[0],
                    });
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildsinglecheckbox(checkboxstate checkbox) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.lightBlue,
        value: checkbox.value,
        title: Text(
          checkbox.title,
          style: TextStyle(fontSize: 20),
        ),
        onChanged: (value) {
          setState(() {
            checkbox.value = value!;
            if (checkbox.value != false) {
              boolean.add(checkbox.title);
            } else if (checkbox.value == false) {
              if (boolean.contains(checkbox.title)) {
                boolean.remove(checkbox.title);
              }
            }
            print(boolean);
          });
        },
      );
}
