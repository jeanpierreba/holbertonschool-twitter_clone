import 'package:flutter/material.dart';
import 'packager:provider/provider.dart';
import 'package:twitter_clone/screens/chats_screen.dart';
import 'package:twitter_clone/screens/home_screen.dart';
import 'package:twitter_clone/screens/notifications_screen.dart';
import 'package:twitter_clone/screens/search_screen.dart';
import 'package:twitter_clone/providers/share_state.dart';

class BarMenu extends StatefulWidget {
  const BarMenu({Key? key}) : super(key: key);

  @override
  State<BarMenu> createState() => _BarMenuState();
}

class _BarMenuState extends State<BarMenu> {
  int _index = 0;
  List<Widget> _options = <Widget>[
    HomeScreen(),
    SearchScreen(),
    NotificationsScreen(),
    ChatsScreen(),
  ];

  void _onSelect(int index) {
    setSate(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _options.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail_outline,
            ),
            label: '',
          ),
        ],
        currentIndex: _index,
        onTap: _onSelect,
        selectedFontSize: 13,
        unselectedFontSize: 13,
      ),
    );
  }
}
