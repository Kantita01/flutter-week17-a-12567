import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        centerTitle: true,
        title: const Text("Card Widget"),
      ),
      body: Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint("CARD-1");
            },
            child: const SizedBox(
              width: 300.0,
              height: 100.0,
              child: Column(
                children:[
                  Icon(Icons.home),
                  Text("Card-1")
                ]
              ),
            ),
          ),
          ),
      ),
    );
  }
}