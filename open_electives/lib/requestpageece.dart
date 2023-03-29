import 'package:flutter/material.dart';
import 'package:open_electives/checkboxstate.dart';
import 'package:lottie/lottie.dart';

class requestpageece extends StatefulWidget {
  const requestpageece({Key? key}) : super(key: key);

  @override
  State<requestpageece> createState() => _requestpageeceState();
}

class _requestpageeceState extends State<requestpageece> {
  bool value = false;
  bool isLoading = false;
  final notifications = [
    checkboxstate(title: 'Introduction to java'),
    checkboxstate(title: 'Introduction to Data Structures'),
    checkboxstate(title: 'Fundamentals of Management[MBA]'),
    checkboxstate(title: 'Non-conventional energy sources'),
    checkboxstate(title: 'Basics of Material Engineering'),
    checkboxstate(title: 'Startup Management[MBA]'),
    checkboxstate(title: 'Concepts of ThermoDynamics'),
    checkboxstate(title: 'Anatomy and Physiology for engineers'),
    checkboxstate(title: 'Hospital management and information system'),
    checkboxstate(title: 'Green Building Technologies'),
    checkboxstate(title: 'Synthesis and characterization of nanomaterials'),
  ];
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
              padding: EdgeInsets.fromLTRB(10, 90, 10, 17),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  textStyle: TextStyle(fontSize: 18.0),
                  minimumSize: Size.fromHeight(72),
                  shape: StadiumBorder(),
                ),
                child: isLoading
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(color: Colors.white),
                          const SizedBox(width: 24),
                          Text("please wait..."),
                        ],
                      )
                    : Text('Submit'),
                onPressed: () async {
                  if (isLoading) return;

                  setState(() => isLoading = true);
                  await Future.delayed(Duration(seconds: 5));
                  setState(() => isLoading = false);
                  child:
                  isLoading
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Loading...',
                              style: TextStyle(fontSize: 20),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ],
                        )
                      : const Text('Submitted');
                },
              ),
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
          });
        },
      );
}
