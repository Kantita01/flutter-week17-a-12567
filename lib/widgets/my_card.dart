import 'package:flutter/material.dart';

class Menu{
  final String? title;
  final IconData? icon;
  final Color? backgroundColor;
  Menu({required this.title, required this.icon, required this.backgroundColor});
}

List<Menu> menus = [
  Menu(title: 'MENU-1', icon: Icons.percent, backgroundColor: Colors.purple),
  Menu(title: 'MENU-2', icon: Icons.person_add, backgroundColor: Colors.blue),
  Menu(title: 'MENU-3', icon: Icons.power_off, backgroundColor: Colors.red),
  Menu(title: 'MENU-4', icon: Icons.wifi, backgroundColor: Colors.green),
];

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        centerTitle: true,
        title: const Text("My Card Widget"),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(menus.length, (index) {
            return Card(
              color: menus[index].backgroundColor,
              margin: const EdgeInsets.all(12),
              child: InkWell(
                onTap: () {
                  debugPrint("${menus[index].title}");
                },
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(menus[index].icon, size: 40, color: Colors.white),
                      Text("${menus[index].title}",style: const TextStyle(fontSize: 15.0, color: Colors.white),)
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}