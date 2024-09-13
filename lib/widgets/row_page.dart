import 'package:flutter/material.dart';
import 'package:flutter_week17/home.dart';

class RowPage extends StatelessWidget {
  final String name;
  static String id = 'row';
  const RowPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row widget"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SizedBox(
          height: 250.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("R-1", style: TextStyle(fontSize: 25.0)),
            const Text("R-2", style: TextStyle(fontSize: 25.0)),
            const Text("R-3", style: TextStyle(fontSize: 25.0)),
            const Text("R-4", style: TextStyle(fontSize: 25.0)),
            const Text("R-5", style: TextStyle(fontSize: 25.0)),
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
      )
        
    );
  }
}