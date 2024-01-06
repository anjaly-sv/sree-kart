import 'package:flutter/material.dart';
import 'homescreens/homepage.dart';
import 'homescreens/mycart.dart';
import 'homescreens/settings.dart';

class BottamAppbar extends StatefulWidget {
   BottamAppbar({super.key});

  @override
  State<BottamAppbar> createState() => _BottamAppbarState();
}

class _BottamAppbarState extends State<BottamAppbar> {
  int _currentIndex = 0;

  List Pages = [HomeScreen(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4e4e4),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => cart(),
            )),
        child: Icon(
          Icons.shopping_cart,
          color: Colors.green,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.white),
            label: "settings",
          )
        ],
      ),
    );
  }
}
