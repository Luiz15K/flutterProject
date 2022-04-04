// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:projeto/mailPage.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 51, 66, 91),
        unselectedItemColor: Color.fromARGB(255, 51, 66, 91),
        showUnselectedLabels: false,
        iconSize: 25,
        type: BottomNavigationBarType.shifting,
        onTap: (index) => setState(() => currentIndex = index),
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Opções",
              backgroundColor: Color.fromARGB(255, 35, 232, 232)),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 35, 232, 232)),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Perfil",
            backgroundColor: Color.fromARGB(255, 35, 232, 232),
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
                color: Color.fromARGB(255, 35, 232, 232),
                elevation: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  splashColor: Colors.teal,
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        title: Text(
                          "Seu app de Finanças está aqui!",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 51, 66, 91)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Center(
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
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color.fromARGB(255, 35, 232, 232),
                elevation: 20,
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.teal,
                  child: SizedBox(
                    width: 500,
                    height: 120,
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            "Minha Conta",
                            style: TextStyle(
                                color: Color.fromARGB(255, 51, 66, 91),
                                fontSize: 20),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(24),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color.fromARGB(255, 35, 232, 232),
                elevation: 20,
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.teal,
                  child: SizedBox(
                    width: 500,
                    height: 120,
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            "Serviços",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 51, 66, 91)),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(24),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color.fromARGB(255, 35, 232, 232),
              elevation: 20,
              child: InkWell(
                onTap: () {},
                splashColor: Colors.teal,
                child: SizedBox(
                  width: 100,
                  height: 120,
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        title: Text(
                          "Fale Conosco",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 51, 66, 91)),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Container(
        child: Drawer(
          backgroundColor: Color.fromARGB(255, 28, 40, 64),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 28, 40, 64),
                  ),
                  currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                        "https://avatars.githubusercontent.com/u/98491571?s=400&u=4071a0bf7c258928a5be27e0a68a5e3ac092b805&v=4"),
                  ),
                  accountName: Text(
                    "Luiz Guilherme",
                  ),
                  accountEmail: Text("luiz@gmail.com")),
              ListTile(
                  title: Text(
                    "Redes Sociais",
                  ),
                  textColor: Color.fromARGB(255, 35, 232, 232),
                  onTap: () {
                    print("return");
                  }),
              ListTile(
                  title: Text("Sobre nós"),
                  textColor: Color.fromARGB(255, 35, 232, 232),
                  onTap: () {
                    print("Clique");
                  }),
              ListTile(
                  title: Text(
                    "Logout",
                  ),
                  textColor: Color.fromARGB(255, 35, 232, 232),
                  subtitle: Text("Sair do seu perfil"),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  })
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Bem-Vindo Luiz!",
        ),
        foregroundColor: Color.fromARGB(255, 28, 40, 64),
        centerTitle: true,
        elevation: 20,
        backgroundColor: Color.fromARGB(255, 35, 232, 232),
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
      backgroundColor: Color.fromARGB(255, 28, 40, 64),
    );
  }
}
