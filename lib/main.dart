import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/wp2918021.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("images/R.png")),
              Text(
                "ITI Quiz App",
                style: TextStyle(
                  color: Color.fromARGB(239, 233, 218, 84),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontFamily: 'DancingScript',
                ),
              ),
              SizedBox(height: 150),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Start", style: TextStyle(fontSize: 30)),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 50),
                      backgroundColor: Color.fromARGB(255, 144, 140, 99))),
            ],
          ),
        ),
      ),
    );
  }
}
