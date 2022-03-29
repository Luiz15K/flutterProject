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
        foregroundColor: Color.fromARGB(255, 28, 40, 64),
        backgroundColor: Color.fromARGB(255, 35, 232, 232),
        title: Text("Minhas Mensagens"),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 28, 40, 64),
    );
  }
}
