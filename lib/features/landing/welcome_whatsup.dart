import 'package:flutter/material.dart';
import 'package:whatsupp_application/colors.dart';

class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({super.key});

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.orange,
      body: SafeArea(
        
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
children:<Widget> [
  SizedBox(height: 50,),

Center(
  child:   Text("Welcome To Whatsupp",style: TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.w600
  
  ),),


),
SizedBox(height: size.height / 9),
Image.asset("assets/bg.png",
height: 340,width: 340,
color: tabColor,),
SizedBox(height: size.height / 9),
Text("The privacy and security of your personal chats with family and friends will never change.",
style: TextStyle(color: Colors.grey,
),
)

],

      )),
    );
  }
}