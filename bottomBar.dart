import 'package:flutter/material.dart';

class bottomBar extends StatefulWidget {
  const bottomBar({Key? key}) : super(key: key);

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text("Inicio", style: optionStyle),
    Text("Opções", style: optionStyle),
    Text("Perfil", style: optionStyle),
    Text("Sair", style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Início",
                backgroundColor: Color.fromARGB(255, 0, 0, 0)),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Opções",
                backgroundColor: Color.fromARGB(255, 0, 0, 0)),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "Perfil",
                backgroundColor: Color.fromARGB(255, 0, 0, 0)),
            BottomNavigationBarItem(
                icon: Icon(Icons.power_settings_new),
                label: "Sair",
                backgroundColor: Color.fromARGB(255, 0, 0, 0))
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          onTap: _onItemTapped,
        ));
  }
}
