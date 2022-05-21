import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child : SingleChildScrollView(

      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "WELCOME",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter the username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter the password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(
                  child: const Text("Login"),
                  style: TextButton.styleFrom(
                    minimumSize: Size(100,30)),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}
