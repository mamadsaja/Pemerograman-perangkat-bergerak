import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 300,
          color: Colors.amber,
          child: Stack(
            fit: StackFit.expand,
            alignment: AlignmentDirectional.topCenter,
            children: [
              Positioned(
                top: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color.fromARGB(255, 2, 8, 44), 
                        Color.fromARGB(255, 53, 11, 170)
                        // const Color.fromARGB(255, 255, 255, 255),
                      ],
                      center: Alignment.topRight,
                      radius: 1,
                    ),
                  ),
                  width: screenWidth,
                  height: 210,
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Hello, New Flutter',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 10,),
                      ],
                  ),
                ),
              ),
                Positioned(
                  left: 20,
                  right: 20,
                  top: 100,
                  child: Container(
                  padding: EdgeInsets.only(left: 30, top: 10
                  ),
                  width: screenWidth,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(1, 2),
                        blurRadius: 10,
                      ),
                    ],
                    ),
                    child: const Positioned(
                      child:  Text(
                        'NIM',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    SizedBox:()

                    
                  ),
                ),
            ],  
          ),
        ),
      ),
    );
  }
}