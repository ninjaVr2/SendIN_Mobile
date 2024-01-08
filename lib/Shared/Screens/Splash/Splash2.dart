import 'package:flutter/material.dart';
class splash2 extends StatelessWidget {
  const splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/imgs/splash1.gif")
                ),
              Text("Welcome to our app"),
              Text("Welcome to our app"),
              Container(),
              ElevatedButton(
              onPressed: (){}, 
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(154, 102, 196, 1),
                      Color.fromRGBO(58, 75, 149, 1),
                    ]
                  )
                ),
                child: Text("Next"),
              )
              ),
            
              ],
          ),
        ),
      ),
    );
  }
}