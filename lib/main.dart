import 'package:flutter/material.dart';
import 'package:whatsapp_ui/responsive/responsiveLayout.dart';
import 'package:whatsapp_ui/screens/mobilescreen.dart';
import 'package:whatsapp_ui/screens/webscreen.dart';
import 'package:whatsapp_ui/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "What'sApp_ui",

      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:backgroundColor),
      
      home:const responsiveLayout(mobileScreenLayout:mobileScreen() ,
      webScreenLayout: webScreen(),),
    );
  }
}

