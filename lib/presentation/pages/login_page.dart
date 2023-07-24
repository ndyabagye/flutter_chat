import 'package:flutter/material.dart';
import 'package:flutter_chat/core/config/app_icons.dart';
import 'package:flutter_chat/core/config/app_routes.dart';
import 'package:flutter_chat/core/config/app_strings.dart';
import 'package:flutter_chat/presentation/widgets/app_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(children: [
              const Spacer(),
              const Text(
                AppStrings.helloWelcome,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                AppStrings.loginToContinue,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const AppTextField(hint: AppStrings.username),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: AppStrings.password),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    print("Clicked");
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    AppStrings.forgotPassword,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )),
                  child: const Text("Log in"),
                ),
              ),
              const Spacer(),
              const Text(
                AppStrings.orSignInWith,
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    print("google is clicked");
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.icGoogle,
                        height: 22,
                        width: 22,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(AppStrings.loginWithGoogle)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    print("facebook is clicked");
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.icFacebook,
                        height: 22,
                        width: 22,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(AppStrings.loginWithFacebook)
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    AppStrings.dontHaveAccount,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.grey[400],
                      ),
                      child: const Text(
                        AppStrings.signup,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ))
                ],
              ),
              const Spacer(),
            ]),
          ),
        ),
      ),
    );
  }
}
