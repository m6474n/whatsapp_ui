import 'package:flutter/material.dart';

class Chat5 extends StatefulWidget {
  const Chat5({super.key});
  static const String id = "Chat5";
  @override
  State<Chat5> createState() => _Chat5State();
}

class _Chat5State extends State<Chat5> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text("Chat 5")),
      ),
    );
  }
}
