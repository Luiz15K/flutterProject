import 'dart:js';

import 'package:flutter/material.dart';

class bottomBar extends StatefulWidget {
  const bottomBar({Key? key}) : super(key: key);

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.settings,
        size: 30,
      ),
      Icon(Icons.home, size: 30),
      Icon(Icons.account_circle, size: 30)
    ];
    return bottomBar();
  }
}
