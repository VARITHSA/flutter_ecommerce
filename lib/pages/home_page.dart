// ignore_for_file: avoid_unnecessary_containers

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
        title: const Text(
          "MUTILVERSE CATALOG",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("the multiverse is ver $days welcome $S ")
          ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
