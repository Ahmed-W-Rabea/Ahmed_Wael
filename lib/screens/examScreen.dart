import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class examScreen extends StatelessWidget {
  examScreen({super.key});
  List quizName = ["Sport test", "History test", "Geography test"];
  List quizcColor = [
    Color.fromARGB(255, 126, 123, 160),
    const Color.fromARGB(255, 126, 123, 160),
    const Color.fromARGB(255, 126, 123, 160)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        for (int i = 0; i < 3; i++)
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: quizcColor[i],
                border: Border.all(
                    width: 1, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              child: Center(
                child: Text(
                  quizName[i],
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
      ]),
    );
  }
}
