import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'package:project/profile.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BottomNavigationBarDemo(),
    );
  }
  // State<Schedule> createState() => _MyWidgetState();
}

class BottomNavigationBarDemo extends StatefulWidget {
  const BottomNavigationBarDemo ({super.key});
  @override
  State<BottomNavigationBarDemo> createState() => _NavbarSatate();
}

class _NavbarSatate extends State<BottomNavigationBarDemo> {
  int _selectedIndex = 0;

  final List<Widget> _Pages = [
    Home(),
    Profile(),
    
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled), 
            label:'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label:'Profile'
          ),
        ],
      ),
    );
  }
}
