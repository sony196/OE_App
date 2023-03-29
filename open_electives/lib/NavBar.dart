import 'package:flutter/material.dart';
import 'package:open_electives/requestpage.dart';
import 'package:open_electives/signuppage.dart';
import 'package:open_electives/loginpage.dart';
import 'package:open_electives/branchname.dart';
import 'package:open_electives/fomsyllabus.dart';
import 'package:open_electives/startup.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('', style: TextStyle(fontSize: 20.0)),
          accountEmail: Text('',
              style: TextStyle(
                fontSize: 20.0,
              )),
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
                image: NetworkImage(
                  'https://media.istockphoto.com/photos/aerial-view-of-misty-mountains-at-sunrise-picture-id1195458582?k=20&m=1195458582&s=612x612&w=0&h=gzpAJTwppTIEAhNbUaHnjuRQoYon0F4C87UQ3xXv1oU=',
                ),
                fit: BoxFit.cover),
          ),
        ),
        ListTile(
            leading: Icon(Icons.star),
            title: Text(
              'Course syllabus',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomePage();
                }),
              );
            }),
        Divider(),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text(
            'Course Request',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return branchname();
              }),
            );
          },
          trailing: Container(
            width: 20,
            height: 20,
          ),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.star),
          title: Text(
            'your courses',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ],
    ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Courses")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 25.0, 4.0, 10.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return fomsyll();
                  }));
                },
                child: Card(
                  color: Colors.lightBlue,
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Fundamentals of Management [MBA]",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return startup();
                  }));
                },
                child: Card(
                  color: Colors.lightBlue,
                  margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 20.0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 5.0, 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Startup Management [MBA]",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: FlatButton(
                onPressed: () {},
                child: Card(
                  color: Colors.lightBlue,
                  margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 20.0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 5.0, 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Non-Conventional energy sources",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // TODO: need to refactor
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: FlatButton(
                onPressed: () {},
                child: Card(
                  color: Colors.lightBlue,
                  margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 20.0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 5.0, 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Basics of material enginnering",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          //TODO: Need to do refactor
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: FlatButton(
                onPressed: () {},
                child: Card(
                  color: Colors.lightBlue,
                  margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 20.0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 5.0, 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Concepts of thermodynamics",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          //TODO: need to do refactor

          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: FlatButton(
                onPressed: () {},
                child: Card(
                  color: Colors.lightBlue,
                  margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 20.0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 5.0, 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Anatomy and physiology for engine",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          //TODO: need to do refactor

//TODO: NEED to do refactor

          //TODO: Need to do refactor

          //TODO: need to do refactor

          //TODO: Need to do refactor

          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: FlatButton(
                onPressed: () {},
                child: Card(
                  color: Colors.lightBlue,
                  margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 20.0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 5.0, 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Green Building technologies",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class subjects extends StatelessWidget {
  subjects(String s, {required this.subject});

  late String subject;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: FlatButton(
          onPressed: () {},
          child: Card(
            color: Colors.lightBlue,
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 20.0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15.0, 20.0, 5.0, 20.0),
              child: Row(
                children: [
                  Text(
                    subject,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
