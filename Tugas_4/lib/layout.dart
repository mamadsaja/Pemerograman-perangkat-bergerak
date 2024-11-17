import 'package:flutter/material.dart';

class M_1201222041 extends StatelessWidget {
  const M_1201222041({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: 500,
            margin: EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 255, 255, 255),
               boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(106, 0, 0, 0),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                )
              ],
            ),
            child: (
              Container(
                height: 10,

                color: Colors.amberAccent,
              )
            ),
          )
        ],
      ),
    );
  }
}