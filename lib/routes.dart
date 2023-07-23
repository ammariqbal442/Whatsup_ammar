import 'package:flutter/material.dart';
import 'package:whatsupp_application/screens/login_ui.dart';

import 'buttons/errors.dart';

Route<dynamic> generateRoute(RouteSettings settings)
{

  switch(settings.name)
  {
    case LoginWhatsup.routeName:
    return   MaterialPageRoute(
                      builder: (context) => const LoginWhatsup(),
                    );
                    default:
                    return MaterialPageRoute(builder:(context)=> Scaffold
                    (
                      body: ErrorScreen(error:"This Page does not exist"),
                    ),
                    );
  }
}