import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Screens/examScreen.dart';
import 'package:flutter_application_1/main.dart';

class loginScreen extends StatefulWidget {
  loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool checkboxvalue = false;
  final _formfield = GlobalKey<FormState>();
  final _emailcontroller = TextEditingController();
  final _usernamecontroller = TextEditingController();
  final _passcontroller = TextEditingController();

  bool passToggle = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 126, 123, 160),
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Image.asset(
                "assets/images/pp.png",
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Form(
                key: _formfield,
                child: Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0)),
                          color: Color.fromARGB(255, 255, 255, 255)),
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.height * 0.5,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(30),
                      child: SingleChildScrollView(
                        child: Column(children: [
                          const Text('Login',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 126, 123, 160),
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2,
                                  fontFamily: 'DancingScript')),
                          TextFormField(
                            controller: _usernamecontroller,
                            inputFormatters: <TextInputFormatter>[
                              UpperCaseTextFormatter()
                            ],
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_2_rounded),
                                hintText: "Enter Username Here",
                                labelText: "Username"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "the username is empty";
                              }
                              if (_usernamecontroller.text.length < 8) {
                                return "the username should be more than 8 characters";
                              }
                            },
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: _passcontroller,
                            obscureText: passToggle,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              hintText: "Enter password Here",
                              labelText: "Password",
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                  });
                                },
                                child: Icon(passToggle
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "the password is empty";
                              }
                            },
                          ),
                          TextFormField(
                            //obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            controller: _emailcontroller,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: "Enter Your E-mail Here",
                              labelText: "E-mail",
                              //     suffixIcon: Icon(Icons.remove_red_eye_outlined)
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "the E-mail is empty";
                              }
                              bool emailValid = RegExp(
                                      r"^[a-zA-z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value);
                              if (!emailValid) {
                                return "Required a valid E-mail";
                              }
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                'New to Quizz app?',
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text('  Register')),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (_formfield.currentState!.validate()) {
                                _emailcontroller.clear();
                                _usernamecontroller.clear();
                                _passcontroller.clear();

                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        examScreen(),
                                  ),
                                );
                              }
                            },
                            child: const Text('login'),
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(130, 30),
                                backgroundColor:
                                    const Color.fromARGB(255, 126, 123, 160),
                                shape: const StadiumBorder(),
                                elevation: 10),
                          ),
                          const SizedBox(
                            width: 20,
                            height: 10,
                          ),
                          const Icon(
                            Icons.fingerprint,
                            size: 50,
                          ),
                          const Text(
                            'Use Touch ID',
                          ),
                          Row(
                            children: <Widget>[
                              Checkbox(
                                  value: checkboxvalue,
                                  activeColor: Colors.green,
                                  onChanged: (bool? newValue) {
                                    setState(() {
                                      checkboxvalue = newValue!;
                                    });
                                  }),
                              Text("Remember me"),
                              Spacer(
                                flex: 6,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text('Forget password?'),
                              ),
                            ],
                          ),
                        ]),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: capitalize(newValue.text),
      selection: newValue.selection,
    );
  }
}

String capitalize(String value) {
  if (value.trim().isEmpty) return "";
  return "${value[0].toUpperCase()}${value.substring(1).toLowerCase()}";
}
