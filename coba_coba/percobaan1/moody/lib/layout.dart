import 'package:flutter/material.dart';

class M_1201222041 extends StatelessWidget {
  const M_1201222041({super.key});

  @override
  Widget build(BuildContext context) {
    // Mendapatkan lebar dan tinggi layar secara dinamis
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Container dengan gradient
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  const Color.fromARGB(255, 255, 255, 255),
                ],
                center: Alignment.topRight,
                radius: 1,
              ),
            ),
            width: screenWidth,
            height: screenHeight, // Menggunakan persentase dari tinggi layar
          ),
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  const Color.fromARGB(255, 2, 8, 44), 
                  const Color.fromARGB(255, 53, 11, 170)
                  // const Color.fromARGB(255, 255, 255, 255),
                ],
                center: Alignment.topRight,
                radius: 1,
              ),
            ),
            width: screenWidth,
            height: 230,
            padding: EdgeInsets.only(bottom: 10, left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Transform.translate(
                  offset: Offset(25, 70),
                  child: Text(
                    "Hello, Muhammad",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Transform.translate(
                  offset: Offset(25, 60),
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ],             
            ),
          ),
          Positioned(
            top: screenHeight * 0.17, 
            left: screenWidth * 0.075, 
            child: Container(
              width: screenWidth * 0.85, 
              height: screenHeight * 0.2, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), 
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3), 
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(30, 20),
                    child: Text(
                      "NIM",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Transform.translate(
                    offset: Offset(30, 10),
                    child: Text(
                      "1201222041",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 0),
                  Transform.translate(
                    offset: Offset(30, 10), 
                    child: Text(
                      "Status :",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Transform.translate(
                     offset: Offset(30, 0),
                     child: Text(
                      "Mahasiswa",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                     ),
                  ),
                ],
              )
            ),
          ),
          Positioned(
            top: screenHeight * 0.40,
            left: screenWidth * 0.075,
            child: Container(
              width: screenWidth * 0.85,
              height: 300,
              color: Colors.grey[350],
            ),
          ),
        ],

      ),
    );
  }
}