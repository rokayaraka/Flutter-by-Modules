import 'package:course_flutter_codes/Practice%20Packages/percetageIndicator.dart';
import 'package:course_flutter_codes/module%2011/textfield.dart';
import 'package:course_flutter_codes/module%2013/class%201.dart';
import 'package:course_flutter_codes/module%2014/class1.dart';
import 'package:course_flutter_codes/module%2014/class3.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    PercetageINdicator(),
    Module14Class1(),
    Module13Class1(),
    Textfield(),
    Module14Class3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      backgroundColor: Colors.blueGrey.shade100,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        backgroundColor: Colors.white,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home, color: Colors.red),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.inbox, color: Colors.red),
            label: "Inbox",
          ),
          NavigationDestination(
            icon: Icon(Icons.search, color: Colors.red),
            label: "Search",
          ),
          NavigationDestination(
            icon: Icon(Icons.person, color: Colors.red),
            label: "Profile",
          ),
          NavigationDestination(
            icon: Icon(Icons.person, color: Colors.red),
            label: "ID",
          ),
        ],
      ),
    );
  }
}
