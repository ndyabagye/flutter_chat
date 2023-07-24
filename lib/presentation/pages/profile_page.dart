import 'package:flutter/material.dart';
import 'package:flutter_chat/core/config/app_routes.dart';
import 'package:flutter_chat/core/config/app_strings.dart';
import 'package:flutter_chat/core/styles/app_text.dart';
import 'package:flutter_chat/presentation/widgets/tool_bar.dart';
import 'package:flutter_chat/presentation/widgets/user_avatar.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(
              onSelected: (value) {
                switch (value) {
                  case ProfileMenu.edit:
                    Navigator.of(context).pushNamed(AppRoutes.edit);
                  case ProfileMenu.logout:
                    print("logout is clicked");
                  default:
                }
              },
              icon: const Icon(Icons.more_vert_rounded),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: ProfileMenu.edit,
                    child: Text(AppStrings.edit),
                  ),
                  const PopupMenuItem(
                    value: ProfileMenu.logout,
                    child: Text(AppStrings.logout),
                  ),
                ];
              }),
        ],
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 24,
          ),
          UserAvatar(size: 90),
          SizedBox(
            height: 24,
          ),
          Text(
            "Ndyabagye Henry",
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Kuala Lampur",
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // followers
              Column(
                children: [
                  Text(
                    "472",
                    style: AppText.header2,
                  ),
                  Text(
                    AppStrings.followers,
                  ),
                ],
              ),
              // posts
              Column(
                children: [
                  Text(
                    "202",
                    style: AppText.header2,
                  ),
                  Text(
                    AppStrings.posts,
                  ),
                ],
              ),
              // following
              Column(
                children: [
                  Text(
                    "211",
                    style: AppText.header2,
                  ),
                  Text(
                    AppStrings.following,
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 32,
            indent: 3,
            endIndent: 3,
          ),
        ],
      ),
    );
  }
}
