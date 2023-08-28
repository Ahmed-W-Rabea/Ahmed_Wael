import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/loginScreen.dart';
import 'package:flutter/animation.dart';

class openingScreen extends StatefulWidget {
  const openingScreen({super.key});

  @override
  State<openingScreen> createState() => _openingScreenState();
}

class _openingScreenState extends State<openingScreen>
    with TickerProviderStateMixin {
  late final AnimationController _slideController =
      AnimationController(vsync: this, duration: Duration(seconds: 2))
        ..repeat(reverse: true);
  late final Animation<Offset> _animated = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1, 1.5),
  ).animate(CurvedAnimation(parent: _slideController, curve: Curves.elasticIn));

  void initstate() {
    super.initState();

    _slideController.forward();
  }

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
              SlideTransition(
                  position: _animated,
                  child: const Image(image: AssetImage("assets/images/R.png"))),
              Text(
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
