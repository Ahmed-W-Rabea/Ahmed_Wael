import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/quizScreen.dart';

class examScreen extends StatelessWidget {
  examScreen({super.key});
  List quizName = [
    "Sport test",
    "History test",
    "Geography test",
    "Biology tet",
    "Physics test"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(children: [
        for (int i = 0; i < 5; i++)
          Container(
            margin: const EdgeInsets.all(50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => quizScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                backgroundColor: const Color.fromARGB(255, 126, 123, 160),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              child: Center(
                child: Text(
                  quizName[i],
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
      ]),
    );
  }
}
