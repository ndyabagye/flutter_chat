import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        const Text(
          "Hello, welcome back",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
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
        TextField(
          decoration: InputDecoration(
            hintText: "User name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(0.1),
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
            fillColor: Colors.white.withOpacity(0.1),
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
              backgroundColor: Colors.black,
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
          width: 250,
          child: ElevatedButton(
            onPressed: () {
              print("login Clicked");
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, foregroundColor: Colors.black),
            child: const Text("Login"),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        const Text(
          "Or sign in with",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 16,
        ),
        ElevatedButton(
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
        ElevatedButton(
          onPressed: () {
            print("facebook is clicked");
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
                    backgroundColor: Colors.black),
                child: const Text(
                  'Sign up',
                  style: TextStyle(decoration: TextDecoration.underline),
                ))
          ],
        ),
      ]),
    );
  }
}
