
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Authwrapper extends StatefulWidget {
  const Authwrapper({super.key});

  @override
  State<Authwrapper> createState() => _AuthwrapperState();
}

class _AuthwrapperState extends State<Authwrapper> {

late SharedPreferences prefs;
bool? LoginState;

@override
void initState() {
  super.initState();
  checkAuth();

}

checkAuth()async{
   prefs = await SharedPreferences.getInstance();
   LoginState = prefs.getBool("isloggin");
}

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}