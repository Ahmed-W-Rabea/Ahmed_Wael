import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/quizScreen.dart';
import 'package:flutter_application_1/screens/resultScreen.dart';

import 'Screens/loginScreen.dart';
import 'Screens/openingScreen.dart';
import 'Screens/examScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        // Cupertino App
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: openingScreen()

        // OurFirstScreen(
        //   title: 'Flutter Demo Home Page',
        // ),
        );
  }
}
