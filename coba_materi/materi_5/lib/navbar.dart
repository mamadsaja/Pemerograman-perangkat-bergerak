import 'package:flutter/material.dart';
import 'package:materi_5/Profil.dart';
import 'package:materi_5/firstscreen.dart';
import 'package:materi_5/layout.dart';


class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BottomNavigationBarDemo(),
    );
  }
  // State<Navbar> createState() => _MyWidgetState();
}

class BottomNavigationBarDemo extends StatefulWidget {
  const BottomNavigationBarDemo ({super.key});
  @override
  State<BottomNavigationBarDemo> createState() => _NavbarSatate();
}

class _NavbarSatate extends State<BottomNavigationBarDemo> {
  int _selectedIndex = 0;

  final List<Widget> _Pages = [
    Buttonscreen(),
    Profil(),
    Firstscreen()    
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Design 5'),
        backgroundColor: Colors.amber,
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                onTap: () {},
                child: Text('Material Design',
                style: TextStyle(
                  color: Colors.red
                ),
                ),
                
                )
            ];
          },)
        ],
      ),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_2_sharp), 
            label:'first name'
          ),
        ],
      ),
    );
  }
}
