import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:projeto/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String login = '';
  String password = '';

  Widget _body() {
    return SizedBox(
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
            SizedBox(
              height: 80,
            ),
            Card(
              elevation: 30,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 20, bottom: 12),
                child: Column(
                  children: [
                    TextField(
                      textAlign: TextAlign.center,
                      onChanged: (text) {
                        login = text;
                      },
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 35, 232, 232),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          hintText: "Digite seu Login"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          fillColor: Color.fromARGB(255, 35, 232, 232),
                          hintText: "Digite sua senha",
                          iconColor: Color.fromARGB(255, 35, 232, 232)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RaisedButton(
                      color: Colors.teal,
                      onPressed: () {
                        if (login == "admin" && password == "1234")
                          Navigator.of(context).pushReplacementNamed('/home');
                        else
                          (print("Tente Novamente"));
                      },
                      child: Container(
                        width: 100,
                        child: Text(
                          "Entrar",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          _body(),
        ],
      ),
    );
  }
}
