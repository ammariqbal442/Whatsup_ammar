/*

Written Ammar iqbal welcome file of whatsupp application
*/

import 'package:flutter/material.dart';
import 'package:whatsupp_application/buttons/custom_buttons.dart';
import 'package:whatsupp_application/colors.dart';

import '../../screens/login_ui.dart';

class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({super.key});
 

  @override
  
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
   void navigateToLoginScreen(BuildContext context)
  {
    Navigator.pushNamed(context, LoginWhatsup.routeName);
  }
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
SizedBox(height: size.height / 12),
Image.asset("assets/bg.png",
height: 340,width: 340,
color: tabColor,),
SizedBox(height: size.height / 9),

  Padding(
    padding: const EdgeInsets.only(left:30.0,right: 20),
    child: Text(
      
      "The privacy and security of your personal chats with family and friends will never change.",
    
    style: TextStyle(color: Colors.grey,
    
  
    fontSize: 15,
    
    ),
    textAlign: TextAlign.center,
    
    ),
  ),
  SizedBox(height: 20,),

SizedBox(
  
  width: size.width * 0.70,
height: size.height /15,
child:CustomButton(text: "Agree & Continue ", onPressed: (){
  navigateToLoginScreen(context);

  
},)
 ),




],

      )),
    );
  }
}