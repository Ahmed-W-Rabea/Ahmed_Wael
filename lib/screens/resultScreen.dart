import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/openingScreen.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/resultScreen.dart';

import 'package:flutter_application_1/Screens/loginScreen.dart';
import 'package:flutter_application_1/datamap.dart';
import '../datamap.dart';

class resultScreen extends StatelessWidget {
  final int totalScore;
  final int totalNumberOfQuestion;
  resultScreen(
      {super.key,
      required this.totalScore,
      required this.totalNumberOfQuestion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  text: "Congrats,",
                  style: const TextStyle(fontSize: 30, color: Colors.black),
                  children: [
                    TextSpan(
                        text: "${usernameControl.text} \n",
                        style: const TextStyle(
                            fontFamily: "DancingScript",
                            color: const Color.fromARGB(255, 126, 123, 160),
                            fontSize: 30)),
                    const TextSpan(
                        text: "Your score is: \n ",
                        style: TextStyle(color: Colors.black, fontSize: 30)),
                    TextSpan(
                        text: "$totalScore / $totalNumberOfQuestion  ",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 30)),
                  ]),
            ),
            const SizedBox(
              height: 100,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => openingScreen()),
                        (Route<dynamic> route) => false);
                  },
                  child: const Text("Reset", style: TextStyle(fontSize: 30)),
                  style: ElevatedButton.styleFrom(
                    elevation: 50,
                    fixedSize: const Size(300, 50),
                    backgroundColor: const Color.fromARGB(255, 126, 123, 160),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  )),
            ),
          ]),
    );
  }
}
