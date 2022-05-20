import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
    final String S = "Srivathsa";
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MUTILVERSE CATALOG"),
      ),
      body: Center(
          child: Container(
            child: Text("the multiverse is ver $days welcome $S "),
          ),
        ),
        drawer: Drawer(),
      );
      
    
  }
}