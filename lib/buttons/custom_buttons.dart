import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsupp_application/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
 final  VoidCallback onPressed;
   CustomButton({super.key,
   
   required this.text,
   required this.onPressed,
   
   });

  

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(

      onPressed: onPressed,
      child: Text(text,style: TextStyle(
        color: textColor
      ),),
      style: ElevatedButton.styleFrom(
        primary: tabColor,
        minimumSize: Size(double.infinity, 50)
      ),
    );
  }
}