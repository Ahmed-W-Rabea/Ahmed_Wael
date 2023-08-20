import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/loginScreen.dart';

class openingScreen extends StatelessWidget {
  const openingScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          //decoration: const BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage("assets/images/wp2918021.jpg"),
          // fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage("assets/images/R.png")),
              const Text(
                "ITI Quiz App",
                style: TextStyle(
                  color: Color.fromARGB(255, 126, 123, 160),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontFamily: 'DancingScript',
                ),
              ),
              const SizedBox(height: 150),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => loginScreen(),
                    ),
                  );
                },
                child: const Text("Start", style: TextStyle(fontSize: 30)),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 50),
                    backgroundColor: const Color.fromARGB(255, 126, 123, 160),
                    shape: const StadiumBorder(),
                    elevation: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
