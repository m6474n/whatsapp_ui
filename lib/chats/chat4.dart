import 'package:flutter/material.dart';

class Chat4 extends StatefulWidget {
  const Chat4({super.key});
  static const String id = "Chat4";
  @override
  State<Chat4> createState() => _Chat4State();
}

class _Chat4State extends State<Chat4> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text("Chat 4")),
      ),
    );
  }
}
