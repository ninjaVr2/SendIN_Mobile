import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
           style: const TextStyle(
                      fontFamily: "Sofia Pro",
                      fontSize: 34,
                      fontWeight: FontWeight.w500,
                      ),
          ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text("Sign Up"),
              
            ],
          ),
        )
        ),
    );
  }
}