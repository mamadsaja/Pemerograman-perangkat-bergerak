import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/user.png', width: 200, height: 200),
            const SizedBox(height: 20),
            const Text('John Doe'),
            const SizedBox(height: 20),
            const Text('123 Main St, City, State, ZIP'),
            const SizedBox(height: 20),
            const Text('Email: john.doe@example.com'),
            const SizedBox(height: 20),
            const Text('Phone: (123) 456-7890'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement logout functionality
                print('Logout clicked');
              },
              child: const Text('Logout'),
            )          
          ],
          )
        ),
    );
    
  }
}
