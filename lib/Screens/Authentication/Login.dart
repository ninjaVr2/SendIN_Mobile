

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool isobsure = true;
  bool checkval = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0
              ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontSize: 28
                    ),
                    ),
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              
                              value: checkval, 
                              onChanged: (check){
                              setState(() {
                                checkval = check!;
                              });
                            }
                            ),
                            Text("Remember Me"),
                            Expanded(
                              child: SizedBox()
                              ),
                            TextButton(
                            onPressed: (){}, 
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                            color: Color.fromARGB(255, 76, 239, 160)
                          ),
                          )
                          )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: (){}, 
                          child: Text("LOGIN"))
                      ],
                    ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("New User?"),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          "Sign Up",
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