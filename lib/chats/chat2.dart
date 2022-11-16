import 'package:flutter/material.dart';

class Chat2 extends StatefulWidget {
  const Chat2({super.key});
  static const String id = "Chat2";
  @override
  State<Chat2> createState() => _Chat2State();
}

class _Chat2State extends State<Chat2> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text("Chat 2"))),
    );
  }
}
