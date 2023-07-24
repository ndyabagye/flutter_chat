import 'package:flutter/material.dart';
import 'package:flutter_chat/core/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          Row(
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
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset(
            'assets/temp/post1.jpg',
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Lorem ipsum server data Lorem ipsum server dataLorem ipsum server dataLorem ipsum server data",
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
