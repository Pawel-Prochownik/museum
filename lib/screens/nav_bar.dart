import 'package:flutter/material.dart';
import 'package:museum/screens/evt.dart';
import 'package:museum/screens/home.dart';
import 'package:museum/screens/notifi.dart';
import 'package:museum/screens/profile.dart';
import 'package:museum/util/palette.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = [Home(), Evt(), Notifi(), Profile()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        backgroundColor: ColourPalette.primary,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme:
            const IconThemeData(color: Color(0xFF00ADB5), size: 40),
        unselectedIconTheme:
            const IconThemeData(color: Color(0xFFEEEEEE), size: 25),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event,
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
              Icons.person,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
