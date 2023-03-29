import 'package:flutter/material.dart';

class fomsyll extends StatefulWidget {
  const fomsyll({Key? key}) : super(key: key);

  @override
  State<fomsyll> createState() => _fomsyllState();
}

class _fomsyllState extends State<fomsyll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Syllabus",
          style: TextStyle(
            fontFamily: 'Finlandica',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Text(
            "Introduction to Management",
            style: TextStyle(
              fontFamily: 'Finlandica',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          Divider(color: Colors.black),
          Divider(color: Colors.black),
          Text(
            "Management - Meaning Basic concepts of management, Japanese Management Systems, Role of managers - Functions & Principles of management Historical roots of contemporary management practices",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Divider(),
          Divider(),
          Text(
            "Planning & Organizing: Foundations",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: 'Finlandica',
            ),
          ),
          Divider(color: Colors.black),
          Divider(color: Colors.black),
          Text(
            "Foundations of planning - Types of plans - Approaches to planning - Planning in dynamic environment, Organizational designs and structures traditional and contemporary organizational designs. Organizational culture and ethical behaviour factors shaping organisational culture-creating an ethical culture.",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Divider(),
          Divider(),
          Text(
            "Conflicts, Negotiations & Communication: ",
            style: TextStyle(
              fontFamily: 'Finlandica',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          Divider(color: Colors.black),
          Divider(color: Colors.black),
          Text(
            "Power, Conflict and Negotiations-Sources of individual, functional and divisional Power. Organizational politics. Conflict causes and consequences Pondy's model of organizational conflict-conflict resolution strategies. Communicating effectively in organizations - communication process-barriers to communication-overcoming barriers to communication persuasive communication-communication in crisis situations",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Divider(color: Colors.white),
          Divider(),
          Text(
            "Organizational Behaviour:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: 'Finlandica',
            ),
          ),
          Divider(color: Colors.black),
          Divider(color: Colors.black),
          Text(
            "Organizational behaviour Meaning, Nature, Scope and Importance Individual differences - Cognitive Skills, IQ, Attitudes, Values, Personality - The Big 5 Model of personality - organizationally relevant personality traits. The nature of perception Characteristics of the perceiver, target and situation perceptual problems, emotional intelligence, impression management Group formation - Stages of Formation - Types - Group Decision Making- Group Cohesiveness",
            style: TextStyle(fontSize: 18.0),
          ),
          Divider(),
          Divider(),
          Text(
            "Motivation",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: 'Finlandica',
            ),
          ),
          Divider(color: Colors.black),
          Divider(color: Colors.black),
          Text(
            "Motivation-early and contemporary theories of motivation. Leadership early and contemporary approaches to leadership. Groups and group development turning groups into effective teams.",
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
