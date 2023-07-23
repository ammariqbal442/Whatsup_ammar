import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsupp_application/features/landing/welcome_whatsup.dart';
import 'package:whatsupp_application/firebase_options.dart';


import 'package:whatsupp_application/screens/web_layout_screen.dart';
import 'package:whatsupp_application/utils/responsive_layout.dart';

import 'colors.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: Welcome_Screen(),
        webScreenLayout: WebLayoutScreen(),
      ),
    );
  }
}
