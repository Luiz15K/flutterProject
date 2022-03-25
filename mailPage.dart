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
        backgroundColor: Colors.teal[700],
        title: Text("Minhas Mensagens"),
      ),
      backgroundColor: Colors.teal,
    );
  }
}
