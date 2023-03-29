import 'package:flutter/material.dart';
import 'package:open_electives/welcomescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const openelective());
}

class openelective extends StatelessWidget {
  const openelective({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firstpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
