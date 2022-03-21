import 'dart:html';
import 'package:flutter/material.dart';
import 'package:projeto/bottomBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Text(
              "Menu",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  backgroundColor: Colors.teal),
            ),
          ),
          ListTile(
            leading: Icon(Icons.whatsapp),
            title: Text("Mensagens"),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Perfil"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Configurações"),
          )
        ]),
      ),
      appBar: AppBar(
        title: Text("Menu do Usuário"),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.outbox),
            tooltip: 'Opções',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Opções'),
                      shadowColor: Colors.black,
                      backgroundColor: Colors.teal,
                    ),
                    body: const Center(
                      child: Text(
                        'Opção do usuário',
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    backgroundColor: Colors.teal,
                  );
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
