// ignore_for_file: dead_code, unused_label

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro/pages/home_page.dart';
import 'package:intro/pages/login_page.dart';
import 'package:intro/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),

          )
        )
       );
          
      debugShowCheckedModeBanner: false;
      initialRoute: MyRoutes.loginRoute;
      routes: {
        MyRoutes.loginRoute ; (context) => LoginPage();
        "/"; (context) => LoginPage();
        MyRoutes.homeRoute ; (context) => HomePage();
      }
    
  }
}
