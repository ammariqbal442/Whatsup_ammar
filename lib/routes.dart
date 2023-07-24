import 'package:flutter/material.dart';
import 'package:whatsupp_application/screens/login_ui.dart';
import 'package:whatsupp_application/screens/otp_screen.dart';
import 'package:whatsupp_application/screens/userinformation.dart';

import 'buttons/errors.dart';
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginWhatsup.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginWhatsup(),
      );
   case OTP_Screen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTP_Screen(
          verificationId: verificationId,
        ),
      );
       case UserInformationScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const UserInformationScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: ErrorScreen(error: "This Page does not exist"),
        ),
      );
  }
}
