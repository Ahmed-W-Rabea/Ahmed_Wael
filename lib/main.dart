import 'package:flutter/material.dart';

import 'Screens/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Cupertino App
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: loginScreen()

        // OurFirstScreen(
        //   title: 'Flutter Demo Home Page',
        // ),
        );
  }
}
