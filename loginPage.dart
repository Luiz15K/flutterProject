import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String email = '';
String password = '';

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (text) {
                email = text;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Login"),
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
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                if (email == "luizguilherme011@gmail.com" && password == "1234")
                  ;
                print("correto");
              },
              child: Text("Entrar"),
            )
          ],
        ),
      ),
    ));
  }
}
