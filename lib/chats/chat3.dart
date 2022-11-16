import 'package:flutter/material.dart';

class Chat3 extends StatefulWidget {
  const Chat3({super.key});
  static const String id = "Chat3";
  @override
  State<Chat3> createState() => _Chat3State();
}

class _Chat3State extends State<Chat3> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text("Chat 3")),
      ),
    );
  }
}
