import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projeto/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String login = '';
String password = '';

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/logo.png'),
            ),
            TextField(
              onChanged: (text) {
                login = text;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Login"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (text) {
                password = text;
              },
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Senha"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (login == "admin" && password == "1234")
                  Navigator.of(context).pushReplacementNamed('/home');
                else
                  (print("Tente Novamente"));
              },
              child: Text("Entrar"),
            )
          ],
        ),
      ),
    ));
  }
}
