import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(6),
          child: CircleAvatar(
            maxRadius: 10,
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/originals/c5/a6/d4/c5a6d4a0d33151ac29bfe66d2cfd4ab1.png'),
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'Chat',
          style: TextStyle(color: Colors.grey.shade900),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.lightBlue,
              ))
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 500,
              ),
              Center(
                child: Text(
                  "No Chats Yet",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}