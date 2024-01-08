import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sendin_mobile/Animations/Page_transitions.dart';
import 'package:sendin_mobile/Screens/Authentication/Login.dart';
class splash3 extends StatelessWidget {
  const splash3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container()
                    ),
                  TextButton(
                    onPressed: () => PagetransAnimate(context, PageTransitionType.rightToLeft, Login()), 
                    child: Text(
                      "Skip",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        	fontFamily: "Sofia Pro",
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff3a4b95),
                          height: 24/20, 
                          
                      ),
                      )
                    ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: 300,
                child: Image.asset(
                  "assets/imgs/splash2.gif",
                  fit: BoxFit.cover,
                  )
                ),
              Text( 
                "Cover Your Family".toUpperCase(),
                        style: const TextStyle(
                        fontFamily: "Sofia Pro",
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(58, 75, 149, 1),
                        ),
                        textAlign: TextAlign.center, 
                        ),
              Text( 
                "From Across the World".toUpperCase(),
                        style: const TextStyle(
                        fontFamily: "Sofia Pro",
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(154, 102, 196, 1),
                        ),
                        textAlign: TextAlign.center, 
                        ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 40
                ),
                child: SvgPicture.asset("assets/imgs/caro1.svg")
              ),
              Container(
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
                  onPressed: () => PagetransAnimate(context, PageTransitionType.rightToLeft, Login()), 
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                         horizontal: MediaQuery.of(context).size.width*0.2
                          ),
                    child: Text(
                      "GET STARTED",
                      style: TextStyle(
                          color: Colors.white,
                        	fontFamily: "Sofia Pro",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 43.75/20, 
                      ),
                      ),
                  )
                    ),
              )
              ],
          ),
        ),
      ),
    );
  }
}