import 'package:flutter/material.dart';
import 'package:projeto/homePage.dart';
import 'package:projeto/loginPage.dart';
import 'package:projeto/mailPage.dart';
import 'package:projeto/optionsPage.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/mail': (context) => MailPage(),
        '/options': (context) => OptionsPage()
      },
    );
  }
}
