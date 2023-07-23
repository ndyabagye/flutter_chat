import 'package:flutter/material.dart';

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
              Spacer(),
              const Text(
                "Hello, welcome back !",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              const Text(
                "Login to continue",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "User name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                ),
              ),
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
                    "Forgot password?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/main");
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )),
                  child: const Text("Log in"),
                ),
              ),
              Spacer(),
              const Text(
                "Or sign in with",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
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
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        height: 22,
                        width: 22,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      const Text("Login With Google")
                    ],
                  ),
                ),
              ),
              SizedBox(
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
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/facebook.png',
                        height: 22,
                        width: 22,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      const Text("Login With Facebook")
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Do not have an account?",
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
                        'Sign up',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ))
                ],
              ),
              Spacer(),
            ]),
          ),
        ),
      ),
    );
  }
}
