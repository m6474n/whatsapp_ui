import 'package:flutter/material.dart';
import 'package:whatsapp_ui/chats/chat1.dart';
import 'package:whatsapp_ui/chats/chat2.dart';
import 'package:whatsapp_ui/chats/chat3.dart';
import 'package:whatsapp_ui/chats/chat4.dart';
import 'package:whatsapp_ui/chats/chat5.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Whatsapp"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(child: Text("Chats")),
                Tab(child: Text("Status")),
                Tab(child: Text("Calls")),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  itemBuilder: (context) => const [
                        PopupMenuItem(value: "1", child: Text("New Group")),
                        PopupMenuItem(value: "2", child: Text("Setting")),
                        PopupMenuItem(value: "3", child: Text("Logout")),
                      ]),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          body: TabBarView(children: [
            const Text("camera"),
            Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, Chat1.id);
                  },
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg'),
                  ),
                  title: const Text('Beanie'),
                  subtitle: const Text('Okay'),
                  trailing: const Text('6:45 pm'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, Chat2.id);
                  },
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2016/03/27/16/54/face-1283106_960_720.jpg'),
                  ),
                  title: const Text('Jake'),
                  subtitle: Row(
                    children: const [
                      Text('Hey!'),
                    ],
                  ),
                  trailing: const Text('1:25 am'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, Chat3.id);
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2021/06/15/16/11/man-6339003_960_720.jpg'),
                  ),
                  title: Text('Mike'),
                  subtitle: Text('Bye'),
                  trailing: Text('Yesterday'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, Chat4.id);
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2014/10/06/17/30/child-476507_960_720.jpg'),
                  ),
                  title: Text('John'),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_missed_rounded,
                        color: Colors.red,
                      ),
                      Text("Missed voice call"),
                    ],
                  ),
                  trailing: Text('Saturday'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, Chat5.id);
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg'),
                  ),
                  title: Text('Micheal'),
                  subtitle: Text('??'),
                  trailing: Text('11/8'),
                )
              ],
            ),
            const Text("Status"),
            ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                    ),
                    title: const Text("Micheal"),
                    subtitle: Row(children: const [
                      Icon(
                        Icons.call_received_rounded,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Yesterday, 6:30pm")
                    ]),
                    trailing: const Icon(Icons.phone_rounded),
                  );
                }),
          ]),
        ));
  }
}
