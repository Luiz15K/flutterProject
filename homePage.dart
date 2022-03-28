import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:projeto/mailPage.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        showUnselectedLabels: false,
        iconSize: 25,
        type: BottomNavigationBarType.shifting,
        onTap: (index) => setState(() => currentIndex = index),
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Opções",
              backgroundColor: Color.fromARGB(255, 0, 150, 136)),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 0, 150, 136)),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Perfil",
            backgroundColor: Color.fromARGB(255, 0, 150, 136),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        width: double.maxFinite,
        child: ListView(
          children: <Widget>[
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
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
                        child: Image.asset(
                          "assets/images/shutterstock1.jpg",
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 21, 43, 41),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 21, 43, 41),
                ),
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
                textColor: Colors.white,
                onTap: () {
                  print("return");
                }),
            ListTile(
                title: Text("Sobre nós"),
                textColor: Colors.white,
                onTap: () {
                  print("Clique");
                }),
            ListTile(
                title: Text(
                  "Logout",
                ),
                textColor: Colors.white,
                subtitle: Text("Sair do seu perfil"),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                })
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Bem-Vindo Luiz!"),
        centerTitle: true,
        elevation: 20,
        backgroundColor: Color.fromARGB(255, 0, 150, 136),
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
      backgroundColor: Color.fromARGB(255, 21, 43, 41),
    );
  }
}
