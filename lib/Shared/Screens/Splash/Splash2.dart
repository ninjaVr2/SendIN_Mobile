import 'package:flutter/material.dart';
class splash2 extends StatelessWidget {
  const splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: 200,
              child: Image.asset("assets/imgs/splash1.gif")
              ),
            Text( 
              "Best Insurance Plans Customized for You",
                      style: const TextStyle(
                      fontFamily: "Sofia Pro",
                      fontSize: 34,
                      fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center, ),
           // Text("Welcome to our app"),
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
    );
  }
}