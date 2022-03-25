import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto/bottomBar.dart';
import 'package:projeto/mailPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  mudarCores() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.teal,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.teal,
        systemNavigationBarIconBrightness: Brightness.dark));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        width: double.maxFinite,
        child: ListView(
          children: <Widget>[
            Expanded(
              child: Card(
                color: Colors.teal,
                elevation: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  splashColor: Colors.teal,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: ClipRRect(
                        child: Image.asset("assets/images/shutterstock1.jpg"),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        elevation: 40,
        backgroundColor: Colors.teal[600],
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                      "https://avatars.githubusercontent.com/u/98491571?s=400&u=4071a0bf7c258928a5be27e0a68a5e3ac092b805&v=4"),
                ),
                accountName: Text("Luiz Guilherme"),
                accountEmail: Text("luiz@gmail.com")),
            ListTile(
                title: Text(
                  "Redes Sociais",
                ),
                onTap: () {
                  print("return");
                }),
            ListTile(
                title: Text("Sobre nós"),
                onTap: () {
                  print("Clique");
                }),
            ListTile(
                title: Text(
                  "Logout",
                ),
                subtitle: Text("Sair do seu perfil"),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                })
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Menu do Usuário"),
        elevation: 20,
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.mail),
            tooltip: 'Mensagens',
            onPressed: () {
              Navigator.of(context).pushNamed('/mail');
              MailPage();
            },
          ),
        ],
      ),
      backgroundColor: Colors.teal[700],
    );
  }
}
