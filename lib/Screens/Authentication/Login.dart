

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool isobsure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Welcome back!"),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(),
                ),
            ],
          ),
          ),
          ),
    );
  }
}