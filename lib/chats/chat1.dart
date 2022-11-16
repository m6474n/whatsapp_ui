import 'package:flutter/material.dart';

class Chat1 extends StatefulWidget {
  const Chat1({super.key});
  static const String id = 'Chat1';

  @override
  State<Chat1> createState() => _Chat1State();
}

class _Chat1State extends State<Chat1> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text("Chat 1")),
      ),
    );
  }
}
