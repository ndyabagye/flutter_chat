import 'package:flutter_chat/presentation/pages/edit_profile_page.dart';
import 'package:flutter_chat/presentation/pages/home_page.dart';
import 'package:flutter_chat/presentation/pages/login_page.dart';
import 'package:flutter_chat/presentation/pages/main_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => const LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => const MainPage(),
    '/edit': (context) => const EditProfilePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const edit = '/edit';
}
