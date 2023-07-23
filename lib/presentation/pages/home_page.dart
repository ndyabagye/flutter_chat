import 'package:flutter/material.dart';
import 'package:flutter_chat/core/styles/app_colors.dart';
import 'package:flutter_chat/core/styles/app_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text("Flutter Chat"),
        centerTitle: true,
        actions: [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: ListView(
        children: mockUsersFromServer(),
      ),
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          'assets/temp/user1.png',
          width: 40,
          height: 40,
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          "Sarah Fernandez",
          style: AppText.subtitle3,
        )
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 1000; i++) {
      users.add(_userItem());
    }
    return users;
  }
}
