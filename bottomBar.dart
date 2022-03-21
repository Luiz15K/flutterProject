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
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Início",
            backgroundColor: Colors.teal),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Opções",
            backgroundColor: Colors.teal),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Perfil",
            backgroundColor: Colors.teal),
        BottomNavigationBarItem(
            icon: Icon(Icons.power_settings_new),
            label: "Sair",
            backgroundColor: Colors.teal)
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber,
      onTap: _onItemTapped,
    );
  }
}
