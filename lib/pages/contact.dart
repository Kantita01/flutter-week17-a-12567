import 'package:flutter/material.dart';
import 'package:flutter_week17/home.dart';

class ContactPage extends StatelessWidget {
  final String name; //Contact
  static String id = "/contact";
  const ContactPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ติดต่อเรา"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome $name"),
            ElevatedButton(
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(name: 'หน้าแรก'),
                ) 
              );
            }, 
            child: const Text("Go to Home"))
          ],
        ),
      ),
    );
  }
}