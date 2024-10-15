import 'package:flutter/material.dart';


class M_1201222041 extends StatelessWidget {
  const M_1201222041({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: const Color.fromARGB(255, 22, 10, 192),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: const Color.fromARGB(255, 8, 100, 155),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: const Color.fromARGB(255, 216, 7, 7),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                 Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: const Color.fromARGB(255, 22, 10, 192),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: const Color.fromARGB(255, 8, 100, 155),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: const Color.fromARGB(255, 216, 7, 7),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: const Color.fromARGB(255, 22, 10, 192),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: const Color.fromARGB(255, 8, 100, 155),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: const Color.fromARGB(255, 216, 7, 7),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                 Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: const Color.fromARGB(255, 22, 10, 192),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: const Color.fromARGB(255, 8, 100, 155),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: const Color.fromARGB(255, 216, 7, 7),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                )
              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Container(
                  color:const Color.fromARGB(255, 31, 55, 175),
                  width: 100,
                  height: 100,
                ),
                Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.white,
                ),
                Text(
                  "Yanto",
                  style: TextStyle(
                    fontSize: 15,
                    color:Colors.white,
                  ),
                  
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}