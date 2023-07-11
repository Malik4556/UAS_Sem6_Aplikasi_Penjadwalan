//Bar
import 'package:flutter/material.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/menu/about_menu.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/menu/calender_menu.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/menu/home_menu.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/menu/profile_menu.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/profile/profile_screen.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/read.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyMenu(),
    );
  }
}

class MyMenu extends StatefulWidget {
  const MyMenu({super.key});

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeMenu(),
    CalenderMenu(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(16, 147, 62, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
