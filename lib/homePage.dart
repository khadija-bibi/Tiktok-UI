import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/home.dart';
import 'package:tiktok_ui/pages/inbox.dart';
import 'package:tiktok_ui/pages/search.dart';
import 'package:tiktok_ui/pages/upload.dart';

import 'pages/me.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    Search(),
    Upload(),
    Inbox(),
    Me(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: "Home",
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: "Search",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box, color: Colors.white, size: 40),
              label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox, color: Colors.white),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: "Me",
          ),
        ],
      ),
    );
  }
}
