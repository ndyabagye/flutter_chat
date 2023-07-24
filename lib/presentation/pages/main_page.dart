import 'package:flutter/material.dart';
import 'package:flutter_chat/core/config/app_icons.dart';
import 'package:flutter_chat/core/config/app_strings.dart';
import 'package:flutter_chat/core/styles/app_colors.dart';
import 'package:flutter_chat/presentation/pages/home_page.dart';
import 'package:flutter_chat/presentation/pages/profile_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icHome), label: AppStrings.home),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icFavorite),
              label: AppStrings.favorites),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icAdd),
              label: AppStrings.addPost),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icMessage),
              label: AppStrings.messages),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icUser),
              label: AppStrings.profile),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.primary,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Favorite'),
    ),
    Center(
      child: Text('Post'),
    ),
    Center(
      child: Text('Messages'),
    ),
    ProfilePage(),
  ];
}
