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
          child: Column(
        children: [
          DrawerHeader(child: Text("Menu")),
          ListTile(
              leading: Icon(Icons.question_mark),
              title: Text("Drawer"),
              onTap: () {
                print("Clique");
              }),
          ListTile(
              leading: Icon(Icons.question_mark),
              title: Text("Drawer"),
              onTap: () {
                print("Clique");
              }),
          ListTile(
              leading: Icon(Icons.question_mark),
              title: Text(
                "Drawer",
              ),
              onTap: () {
                print("Clique");
              })
        ],
      )),
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
                    body: Center(
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
