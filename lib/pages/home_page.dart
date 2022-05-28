import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/homescreen";
  final int days = 30;
  final String S = "Srivathsa";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "MUTILVERSE CATALOG",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Text("the multiverse is ver $days welcome $S "),
      ),
      drawer: const MyDrawer(),
    );
  }
}
