import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sendin_mobile/Screens/Authentication/Login.dart';
import 'package:sendin_mobile/Screens/Authentication/OTP_Register.dart';
import 'package:sendin_mobile/Shared/utils/Validator.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey =GlobalKey<FormState>();
  TextEditingController _firstname = TextEditingController();
  TextEditingController _lastname = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _passconfirm = TextEditingController();
  String Selectedgender = "Choose gender";

  List genders = ["Choose gender","Male", "Female", "Others"];

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
        centerTitle: false,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "All the form fields indicated are required.",
                  style: TextStyle(
                    fontFamily: "Sofia Pro",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(144, 99, 191, 1),
                    height: 19/16, 
                  ),
                  ),
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                              controller: _firstname,
                              validator:(text) => Validator.textValidator(text),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(247, 244, 244, 1),
                                labelText: 'First Name',
                                hintText: 'Enter your first name',
                              ),
                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: _lastname,
                              validator:(text) => Validator.textValidator(text),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(247, 244, 244, 1),
                                labelText: 'Last Name',
                                hintText: 'Enter your Last name',
                              ),
                            ),
                            SizedBox(height: 10,),
                            DropdownButtonFormField(
                              items: genders.map((gender) {
                                return new DropdownMenuItem(
                                  value: gender,
                                  child: Text(gender));
                              }).toList(), 
                              onChanged: (value){
                                setState(() {
                                  Selectedgender = value.toString();
                                });
                              },
                              value: Selectedgender,
                              validator:(value)=> value=="Choose gender" ? "Please choose your gender":null,
                               decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(247, 244, 244, 1),
                                labelText: 'Gender',
                                hintText: 'Choose your gender',
                              ),
                              ),
                              SizedBox(height:10),
                              TextFormField(
                              controller: _phone,
                              validator:(text) => Validator.phoneNumberValidator(text),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(247, 244, 244, 1),
                                labelText: 'Phone Number',
                                hintText: 'Enter your Phone Number',
                              ),
                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: _email,
                              validator:(text) => Validator.emailValidator(text),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(247, 244, 244, 1),
                                labelText: 'Email Address',
                                hintText: 'Enter your Email Address',
                              ),
                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: _password,
                              validator:(text) => Validator.passwordValidator(text),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(247, 244, 244, 1),
                                labelText: 'Password',
                                hintText: 'Enter your Password',
                              ),
                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: _passconfirm,
                              validator:(text) => Validator.passwordConfirm(_password.text, text),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(247, 244, 244, 1),
                                labelText: 'Re-enter Password',
                                hintText: 'Enter your Password again',
                              ),
                            ),
                            SizedBox(height: 25,),
                            SizedBox(
                            width: MediaQuery.of(context).size.width*0.95,
                            child: ElevatedButton(
                              onPressed: (){
                                // Navigator.of(context).push(
                                //     MaterialPageRoute(
                                //       builder: (context) => home()
                                //       )
                                //   );
                              }, 
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width*0.28,
                                  vertical: 10
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
                                  "Register".toUpperCase(),
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
                      ],
                    ),
                  )
                  ),
                 SizedBox(height: 15,),
                      GestureDetector(
                        child: Card(
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset("assets/imgs/google.svg"),
                                SizedBox(width: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal:15.0
                                    ),
                                  child: Text(
                                    "Continue with Google",
                                    style: TextStyle(
                                      fontFamily: "Sofia Pro",
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff676767),
                                      height: 35/17, 
                                    ),
                                    ),
                                ),
                                  Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          )
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                           Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => OTPRegister()
                                )
                              );
                        },
                        child: Card(
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset("assets/imgs/otp.svg"),
                                SizedBox(width: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal:15.0
                                    ),
                                  child: Text(
                                    "Quick Signup with OTP",
                                    style: TextStyle(
                                      fontFamily: "Sofia Pro",
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff676767),
                                      height: 35/17, 
                                    ),
                                    ),
                                ),
                                  Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          )
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                        ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Login()
                                )
                              );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Color.fromRGBO(144, 99, 191, 1),
                              fontFamily: "Sofia Pro",
                              fontSize: 16,
                              fontWeight: FontWeight.w600, 
                              height: 19/16,
                            ),
                            )
                            ),
                      ],
                    )
              ],
            ),
          ),
        )
        ),
    );
  }
}