import 'package:flutter/material.dart';

class ArgumentsScreen extends StatefulWidget {
  const ArgumentsScreen({super.key, required this.message});

  final String message;


  @override
  State<ArgumentsScreen> createState() => _ArgumentsScreenState();
}

class _ArgumentsScreenState extends State<ArgumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Arguments screen',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),      
      body: Center(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.message),
            TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: const Text('Back')),
          ],
        ),
      ),
    );
  }
}