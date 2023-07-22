import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        body: Column(children: [
          Text("Hello, welcome back"),
          Text("Login to continue"),
          TextField(
            decoration: InputDecoration(hintText: "User name"),
          ),
          TextField(
            decoration: InputDecoration(hintText: "password"),
          ),
        ]),
      ),
    );
  }
}
