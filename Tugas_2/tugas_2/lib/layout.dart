import 'package:flutter/material.dart';

class M_1201222041 extends StatelessWidget {
  const M_1201222041({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left:30),
            width: screenWidth * 0.70,
            height: 200,
            color: const Color.fromARGB(0, 255, 235, 59),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome,', 
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 114, 89, 253)
                  )
                ),
                Text('1201222041 - Muhammad', 
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  )
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(200, -140),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 10, 126, 0),
              ),
            ),
          ),
            Transform.translate(
              offset: Offset(60, -50),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      const Color.fromARGB(202, 153, 63, 255),
                      const Color.fromARGB(255, 75, 39, 238),
                    ], 
                    center: Alignment.topRight,
                    radius: 1.1
                  ),
                  borderRadius: BorderRadius.circular(10)
                  ),
              ), 
            ),
          
        ],
      ),
    );






  }
}