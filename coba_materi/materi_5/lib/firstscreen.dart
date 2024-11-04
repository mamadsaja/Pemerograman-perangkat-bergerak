import 'package:flutter/material.dart';
import 'package:materi_5/arguments.dart';
import 'package:materi_5/secondscreen.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('first screen',
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Secondscreen(),));
            }, child: const Text('pindah laman')),
            TextButton(onPressed: () {
              Navigator.pushNamed(context, '/second');
            }, child: Text('Go to Mamad Screen')),
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  ArgumentsScreen(message: 'ini dari first screen',))); 
            },
             child: Text('Go to argument button')),
             TextButton(onPressed: () {
              _returndata();
            }, child: Text('Go to retundata button')),
          ],
        ),
      ),
    );
  }
  
  Future<void> _returndata() async {
    final result = await Navigator.pushNamed(context, '/return');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(result.toString()),
      ),
    );
  }
}