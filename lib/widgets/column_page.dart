import 'package:flutter/material.dart';
import 'package:flutter_week17/home.dart';

class ColumnPage extends StatelessWidget {
  final String name;
  static String id='/column';
  const ColumnPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text("Row Widget"),
      ),
      body: Center(
        child: SizedBox(
          height: 250.0,
          width: 250.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const Text('C-1',style: TextStyle(fontSize: 25.0),),
            const Text('C-2',style: TextStyle(fontSize: 25.0),),
            const Text('C-3',style: TextStyle(fontSize: 25.0),),
            const Text('C-4',style: TextStyle(fontSize: 25.0),),
            const Text('C-5',style: TextStyle(fontSize: 25.0),),
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
          ],),
        ),
      ),
    );
  }
}