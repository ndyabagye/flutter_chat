import 'package:flutter/material.dart';
import 'package:flutter_chat/core/styles/app_colors.dart';
import 'package:flutter_chat/presentation/pages/home_page.dart';
import 'package:flutter_chat/presentation/pages/login_page.dart';
import 'package:flutter_chat/presentation/pages/main_page.dart';

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
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
