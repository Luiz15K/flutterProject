import 'package:flutter/material.dart';

class MailPage extends StatefulWidget {
  const MailPage({Key? key}) : super(key: key);

  @override
  State<MailPage> createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Color.fromARGB(255, 0, 150, 136),
        title: Text("Minhas Mensagens"),
      ),
      backgroundColor: Color.fromARGB(255, 21, 43, 41),
    );
  }
}
