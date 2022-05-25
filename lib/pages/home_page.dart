import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String S = "Srivathsa";
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MUTILVERSE CATALOG",
        style: TextStyle(
          color: Colors.white,
        ),), 
      ),
      body: Center(
          child: Text("the multiverse is ver $days welcome $S "),
        ),
        drawer: const MyDrawer(),
      );
      
    
  }
}