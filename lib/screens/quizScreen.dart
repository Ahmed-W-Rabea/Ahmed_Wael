import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/resultScreen.dart';

class quizScreen extends StatelessWidget {
  quizScreen({super.key});

  List quizChoices = ["Knife", "Fork", "Burning"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 126, 123, 160),
        automaticallyImplyLeading: false,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('General quiz'),
            Icon(Icons.quiz_rounded),
          ],
        ),
      ),
      body: Column(children: [
        const SizedBox(
          height: 40,
        ),
        Container(
          padding: const EdgeInsets.all(30),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 126, 123, 160),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: const Column(
            children: [
              Align(alignment: Alignment.topLeft),
              Text(
                "Question 1",
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Dancingscript',
                    decoration: TextDecoration.underline),
              ),
              Text(
                "how to Kill a Person?",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'DancingScript',
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        const Text(
          "make your chice:",
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'DancingScript',
          ),
        ),
        for (int i = 0; i < 3; i++)
          Container(
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => resultScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(30),
                alignment: Alignment.center,
                backgroundColor: const Color.fromARGB(255, 126, 123, 160),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              child: Center(
                child: Text(
                  quizChoices[i],
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Dancingscript',
                  ),
                ),
              ),
            ),
          ),
      ]),
    );
  }
}
