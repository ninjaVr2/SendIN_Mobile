import 'package:flutter/material.dart';
class splash1 extends StatelessWidget {
  const splash1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset("assets/imgs/logo.png"),
        ),
      ),
    );
  }
}