import 'package:flutter/material.dart';
import 'package:whatsapp_ui/chats/chat1.dart';
import 'package:whatsapp_ui/chats/chat2.dart';
import 'package:whatsapp_ui/chats/chat3.dart';
import 'package:whatsapp_ui/chats/chat4.dart';
import 'package:whatsapp_ui/chats/chat5.dart';
import 'package:whatsapp_ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        Chat1.id: (context) => Chat1(),
        Chat2.id: (context) => Chat2(),
        Chat3.id: (context) => Chat3(),
        Chat4.id: (context) => Chat4(),
        Chat5.id: (context) => Chat5(),
      },
    );
  }
}
