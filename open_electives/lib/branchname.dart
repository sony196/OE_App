import 'package:flutter/material.dart';
import 'package:open_electives/requestpage.dart';
import 'package:open_electives/requestpageece.dart';

class branchname extends StatefulWidget {
  const branchname({Key? key}) : super(key: key);

  @override
  State<branchname> createState() => _branchState();
}

class _branchState extends State<branchname> {
  late String branch;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Branch confirmation",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Finlandica',
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 48.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    branch = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your branch',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 17),
                  child: FlatButton(
                    textColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                    color: Colors.blue,
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      if (branch == "cse") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return requestpage(email: "");
                        }));
                      } else if (branch == "ece") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return requestpageece();
                        }));
                      }
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
