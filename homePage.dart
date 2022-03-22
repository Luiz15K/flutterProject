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
          UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    "https://avatars.githubusercontent.com/u/98491571?s=400&u=4071a0bf7c258928a5be27e0a68a5e3ac092b805&v=4"),
              ),
              accountName: Text("Luiz Guilherme"),
              accountEmail: Text("luiz@gmail.com")),
          DrawerHeader(
            child: Text("Menu"),
          ),
          ListTile(
              leading: Icon(Icons.question_mark),
              title: Text("Drawer"),
              onTap: () {
                print("return");
              }),
          ListTile(
              leading: Icon(Icons.question_mark),
              title: Text("Drawer"),
              onTap: () {
                print("Clique");
              }),
          ListTile(
              leading: Icon(Icons.close),
              title: Text(
                "Logout",
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
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
