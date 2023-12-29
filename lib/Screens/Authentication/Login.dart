

import 'package:flutter/material.dart';

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
                    SizedBox(height: 30,),
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
                        SizedBox(height: 10,),
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
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Checkbox(
                              //TODO: Change shape
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
                        SizedBox(height: 10,),
                        ElevatedButton(
                          onPressed: (){}, 
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white
                            ),
                            ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 51, 39, 186),
                            textStyle: TextStyle(
                              color: Colors.white
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            ),
                            padding: EdgeInsets.symmetric(vertical: 20),
                            fixedSize: Size(
                              MediaQuery.of(context).size.width*0.95,
                              40
                            ),
                          ),
                          ),       
                      ],
                    ),
                    ),
                    const SizedBox(
                      height: 15,
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


//TODOS
//TODO: add horizontal padding
//TODO: Adjust Spacing
//TODO: add functionality 