// class MyRoutes {
//   static String loginRoute = "/login";
//   static String homeRoute = "/home";
// }

import 'package:flutter/material.dart';
import 'package:intro/pages/home_page.dart';

import '../pages/home_details_page.dart';
import '../pages/login_page.dart';

final Map<String, WidgetBuilder> path = {
  LoginPage.routeName: (context) => const LoginPage(),
  HomePage.routeName: (context) => HomePage(),
  // HomeDetail.routeName: (context) => HomeDetail()
};
