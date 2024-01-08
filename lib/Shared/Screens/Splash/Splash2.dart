import 'package:flutter/material.dart';
class splash2 extends StatelessWidget {
  const splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: 300,
                child: Image.asset(
                  "assets/imgs/splash1.gif",
                  fit: BoxFit.cover,
                  )
                ),
              Text( 
                "Best Insurance Plans",
                        style: const TextStyle(
                        fontFamily: "Sofia Pro",
                        fontSize: 34,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(58, 75, 149, 1),
                        ),
                        textAlign: TextAlign.center, 
                        ),
              Text( 
                "Customized for You",
                        style: const TextStyle(
                        fontFamily: "Sofia Pro",
                        fontSize: 34,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(154, 102, 196, 1),
                        ),
                        textAlign: TextAlign.center, 
                        ),
              Container(
                height: 30,
                child: Image.asset("assets/imgs/caro.svg"),
              ),
              // ElevatedButton(
              // onPressed: (){}, 
              // style: ElevatedButton.styleFrom(
              //                 backgroundColor: Colors.transparent,
              //                 shadowColor: Colors.transparent,
              //                 padding: EdgeInsets.all(0.0),
              //                 textStyle: TextStyle(
              //                   color: Colors.white
              //                 ),
              //                 shape: RoundedRectangleBorder(
              //                   borderRadius: BorderRadius.circular(5)
              //                 ),
              //                 ),
              // child: Container(
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       colors: [
              //         Color.fromRGBO(58, 75, 149, 1),
              //         Color.fromRGBO(154, 102, 196, 1),
              //       ]
              //     )
              //   ),
              //   child: Text("Next"),
              // )
              // ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*0.35
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(58, 75, 149, 1),
                        Color.fromRGBO(154, 102, 196, 1),
                      ]
                    )
                  ),
                  child: TextButton(
                    onPressed: (){}, 
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white
                      ),
                      )
                      ),
                ),
              )
              ],
          ),
        ),
      ),
    );
  }
}