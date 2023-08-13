import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class resultScreen extends StatelessWidget {
  const resultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello, Yasmin Your score is 1/1",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Dancingscript',
                  fontSize: 60),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text("Reset", style: TextStyle(fontSize: 30)),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                  backgroundColor: const Color.fromARGB(255, 126, 123, 160),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                )),
          ]),
    );
  }
}
