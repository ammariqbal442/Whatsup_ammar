import 'package:flutter/material.dart';

import '../colors.dart';




class LoginWhatsup extends StatefulWidget {
  static const  routeName ='/login-ui';
  const LoginWhatsup({super.key});

  @override
  State<LoginWhatsup> createState() => _LoginWhatsupState();
}

class _LoginWhatsupState extends State<LoginWhatsup> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text("Enter Your Phone Number")
      ),
body: SafeArea(child: Column(
  children: <Widget>[

  ],
)),

    );
  }
}