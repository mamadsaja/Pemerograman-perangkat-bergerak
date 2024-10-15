import 'package:flutter/material.dart';
import 'package:materi_4/kemaren.dart';
import 'package:materi_4/layout.dart';

class M_1201222041_tabar extends StatelessWidget {
  const M_1201222041_tabar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom:TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs:[
                Tab(icon: Icon(Icons.home_filled),text: "Home",),
                Tab(icon: Icon(Icons.wallet_giftcard_outlined),text: "Account",),
                Tab(icon: Icon(Icons.alarm),text:"Alarm",),
                Tab(icon: Icon(Icons.home_filled),text: "Home",),
                Tab(icon: Icon(Icons.wallet_giftcard_outlined),text: "Account",),
                Tab(icon: Icon(Icons.alarm),text:"Alarm",),
          ],
           
          ),
        ),
        body: SafeArea(
          child:TabBarView(
            children:[
              Home(),
              M_1201222041(),
              kemaren(),
              Home(),
              M_1201222041(),
              kemaren()
            ] 
          ) 
        ),
      ),
    );
  }
}

  class Home extends StatelessWidget {
    const Home({
      super.key,
    });

    @override
    Widget build(BuildContext context) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.person),
              Text('Profile'),
              Icon(Icons.arrow_right_alt)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.person),
              Text('Profile'),
              Icon(Icons.arrow_right_alt)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.person),
              Text('Profile'),
              Icon(Icons.arrow_right_alt)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.person),
              Text('Profile'),
              Icon(Icons.arrow_right_alt)
            ],
          ),
        ],
      );
    }
  }