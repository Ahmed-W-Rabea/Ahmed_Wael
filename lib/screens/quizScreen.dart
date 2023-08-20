import 'package:flutter/material.dart';
import 'package:flutter_application_1/datamap.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/resultScreen.dart';

class quizScreen extends StatefulWidget {
  final Map categoryMap;
  quizScreen({super.key, required this.categoryMap});

  @override
  State<quizScreen> createState() => _quizScreenState();
}

class _quizScreenState extends State<quizScreen> {
  int index = 0;
  int totalScore = 0;

  // List quizChoices = ["Knife", "Fork", "Burning"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 126, 123, 160),
        automaticallyImplyLeading: false,
        title: Text(widget.categoryMap["categoryName"]),
        leading: Center(
            child: Text(
          " ${index + 1} / ${(widget.categoryMap["data"] as List).length}",
          // style: TextStyle(
          //   fontSize: 40,
          //   fontFamily: 'Dancingscript',
          // ),
        )),
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
          child: Column(
            children: [
              const Align(alignment: Alignment.topLeft),
              Text(
                widget.categoryMap["data"][index]["question"],
                style: const TextStyle(
                    fontSize: 40,
                    fontFamily: 'Dancingscript',
                    decoration: TextDecoration.underline),
              ),
              // Text(
              //   "how to Kill a Person?",
              //   style: TextStyle(
              //     fontSize: 30,
              //     fontFamily: 'DancingScript',
              //   ),
              // ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "make your chice:",
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'DancingScript',
          ),
        ),
        for (int i = 0;
            i < (widget.categoryMap["data"][index]["answers"] as List).length;
            i++)
          Container(
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                totalScore += widget.categoryMap["data"][index]["answers"][i]
                    ["score"] as int;
                if (index + 1 < (widget.categoryMap["data"] as List).length) {
                  setState(() {
                    index++;
                    //   totalScore  += widget.categoryMap["data"][index]["answers"][i]["score"] as int;
                  });
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => resultScreen(
                        totalScore: totalScore,
                        totalNumberOfQuestion: index + 1,
                      ),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.center,
                backgroundColor: const Color.fromARGB(255, 126, 123, 160),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child:
                  Text(widget.categoryMap["data"][index]["answers"][i]["ans"]),
              // child: Center(
              //   child: Text(
              //     quizChoices[i],
              //     style: const TextStyle(
              //       fontSize: 30,
              //       color: Colors.black,
              //       fontFamily: 'Dancingscript',
              //     ),
              //   ),
              // ),
            ),
          ),
      ]),
    );
  }
}
