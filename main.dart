import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Text(
              "Menu",
              style: TextStyle(color: Colors.white, fontSize: 24),
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
        backgroundColor: Colors.teal,
        foregroundColor: Colors.amber,
        shadowColor: Colors.amber,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Alert',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Test')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
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
      body: const Center(
        child: Text(
          'Pagina Inicial',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
