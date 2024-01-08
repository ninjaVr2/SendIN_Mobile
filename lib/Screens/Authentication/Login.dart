

import 'package:flutter/material.dart';
import 'package:sendin_mobile/Screens/Authentication/Reset_Password.dart';
import 'package:sendin_mobile/Screens/Authentication/SignUp.dart';
import 'package:sendin_mobile/Screens/Home/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool _isObscure = true;
  bool checkval = false;
  TextEditingController email =  TextEditingController();
  TextEditingController password =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0
              ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 28
                    ),
                    ),
                    Text(
                      "Please enter your email and password to login.",
                      style: TextStyle(
                        fontFamily: "Sofia Pro",
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff676767),
                        height: 28/15, 
                      ),
                      ),
                    SizedBox(height: 15,),
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            labelText: 'Email Address or Username',
                            hintText: 'Enter your Email Address or Username',
                          ),
                        ),
                        SizedBox(
                          height: 15,
                          ),
                        TextFormField(
                          controller: password,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter your password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure ? Icons.visibility_off : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                            )
                        ),
                        SizedBox(
                          height: 20,
                          ),
                       
                        SizedBox(height: 30,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.95,
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => home()
                                    )
                                );
                            }, 
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width*0.35,
                                vertical: 20
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(58, 75, 149, 1),
                                    Color.fromRGBO(144, 99, 191, 1),
                                  ]
                                )
                              ),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  color: Colors.white,
                                  	fontFamily: "Sofia Pro",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500, 
                                ),
                                ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              textStyle: TextStyle(
                                color: Colors.white
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                              ),
                              padding: EdgeInsets.zero,
                            ),
                            ),
                        ),
                        SizedBox(height: 20,),
                         Row(
                          children: [
                            // Checkbox(
                            //   activeColor: Color.fromARGB(255, 18, 18, 161),
                            //   shape: CircleBorder(),
                            //   value: checkval, 
                            //   onChanged: (check){
                            //   setState(() {
                            //     checkval = check!;
                            //   });
                            // }
                            // ),
                            // Text("Remember Me"),
                            Expanded(
                              child: SizedBox()
                              ),
                            TextButton(
                            onPressed: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ResetPassPage()
                                  )
                              );
                            }, 
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                            color: Color.fromARGB(255, 76, 239, 160)
                          ),
                          )
                          )
                          ],
                        ),       
                      ],
                    ),
                    ),
                    SizedBox(height: 15,),
                    const SizedBox(
                      height: 15,
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SignUpPage()
                              )
                            );
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Color.fromARGB(255, 76, 239, 160)
                          ),
                          )
                          ),
                    ],
                  )
                ],
              ),
              ),
          ),
        ),
          ),
    );
  }
}


//TODOS
//TODO: add horizontal padding
//TODO: Adjust Spacing
//TODO: add functionality 