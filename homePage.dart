import 'package:flutter/material.dart';
import 'package:projeto/bottomBar.dart';
import 'package:projeto/mailPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      body: Card(
        child: Padding(
          padding: EdgeInsets.only(right: 400, left: 200, top: 30, bottom: 30),
        ),
      ),
      drawer: Drawer(
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
            DrawerHeader(
              child: Text("Menu"),
            ),
            ListTile(
                title: Text("Drawer"),
                onTap: () {
                  print("return");
                }),
            ListTile(
                title: Text("Drawer"),
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
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.outbox),
            tooltip: 'Mensagens',
            onPressed: () {
              Navigator.of(context).pushNamed('/mail');
              MailPage();
              // Navigator.push(context, MaterialPageRoute<void>(
              //   builder: (BuildContext context) {
              //     return Scaffold(
              //       appBar: AppBar(
              //         title: const Text('Opções',textAlign: ),
              //         shadowColor: Colors.black,
              //         backgroundColor: Colors.teal,
              //       ),
              //       body: Center(
              //         child: Text(
              //           'Opção do usuário',
              //           style: TextStyle(fontSize: 28),
              //         ),
              //       ),
              //       backgroundColor: Colors.teal,
              //     );
              //   },
              // ));
            },
          ),
        ],
      ),
      backgroundColor: Colors.teal[700],
    );
  }
}
