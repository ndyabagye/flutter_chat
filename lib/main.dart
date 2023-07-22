import 'package:flutter/material.dart';
import 'package:flutter_chat/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Urbanist",
      ),
      home: LoginPage(),
    );
  }
}
