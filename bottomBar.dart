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
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Opções",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Perfil",
            backgroundColor: Colors.white),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.teal,
      onTap: _onItemTapped,
    );
  }
}
