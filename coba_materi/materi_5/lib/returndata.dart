import 'package:flutter/material.dart';

class Returndata extends StatefulWidget {
  const Returndata({super.key});

  @override
  State<Returndata> createState() => _ReturndataState();
}

class _ReturndataState extends State<Returndata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('return screen',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),      
      body: Center(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {
              Navigator.pop(context, 'Halo dari data screen');
            }, child: const Text('Back')),
          ],
        ),
      ),
    );
  }
}