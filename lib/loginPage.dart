import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

String login = '';
String password = '';

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6,
              )
            ]),
        height: 60,
        child: TextField(
          onChanged: (text) {
            login = text;
          },
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.email_outlined,
                color: Color.fromARGB(255, 28, 40, 64)),
          ),
        ),
      )
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6,
              )
            ]),
        height: 60,
        child: TextField(
          onChanged: (text) {
            password = text;
          },
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.lock_outline,
                color: Color.fromARGB(255, 28, 40, 64)),
          ),
        ),
      )
    ],
  );
}

Widget buildSignBtn() {
  return GestureDetector(
    onTap: () => print("Login"),
    child: RichText(
      text: TextSpan(children: [
        TextSpan(
            text: 'Não possui uma conta?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            )),
        TextSpan(
            text: '  Cadastre já!',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18))
      ]),
    ),
  );
}

Widget buildLoginBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print("login"),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Color.fromARGB(255, 35, 232, 232),
      child: Text(
        "Entrar",
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

RaisedButton(
    {required int elevation,
    required void Function() onPressed,
    required EdgeInsets padding,
    required RoundedRectangleBorder shape,
    required Color color,
    required Text child}) {}

void setState(Null Function() param0) {}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Color.fromARGB(255, 28, 40, 64)),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    Text(
                      "Vamos Começar!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    buildEmail(),
                    SizedBox(height: 10),
                    buildPassword(),
                    SizedBox(height: 10),
                    buildSignBtn(),
                    buildLoginBtn()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
