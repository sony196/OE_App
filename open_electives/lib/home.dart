import 'package:flutter/material.dart';
import 'package:open_electives/NavBar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class home extends StatefulWidget {
  static const String id = 'home';
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.orange,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 500,
              child: Image(
                image: AssetImage('images/bvrit.logo.png'),
              ),
            ),
            Container(
                height: 50,
                margin: EdgeInsets.only(top: 3),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'UNIVERSAL LEARNING',
                      textStyle: TextStyle(
                        fontFamily: 'Finlandica',
                        fontSize: 40.0,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
    ;
  }
}
