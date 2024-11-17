import 'package:flutter/material.dart';

class M_1201222041 extends StatefulWidget {
  const M_1201222041({super.key});

  @override
  State<M_1201222041> createState() => _M_1201222041State();
}

class _M_1201222041State extends State<M_1201222041> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("media camera"),),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/grifffit 2.jpg"),
            // Image.network(image: image)
          ],
        ),
      ),
    );
  }
}