import 'package:bahcem_deneme/register_sayfasi.dart';
import 'package:flutter/material.dart';
import 'package:bahcem_deneme/login_sayfasi.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView(){
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginSayfasi(toggleView:  toggleView);
    } else {
      return RegisterSayfasi(toggleView:  toggleView);
    }
  }
}