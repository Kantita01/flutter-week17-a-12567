import 'package:flutter/material.dart';
import 'package:flutter_week17/pages/contact.dart';
import 'package:flutter_week17/widgets/card_demo.dart';
import 'package:flutter_week17/widgets/column_page.dart';
import 'package:flutter_week17/widgets/list_view_menu.dart';
import 'package:flutter_week17/widgets/my_card.dart';
import 'package:flutter_week17/widgets/row_page.dart';

class HomePage extends StatelessWidget {
  final String name; //หน้าแรก
  static String id = "/home";
  const HomePage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
        backgroundColor: Colors.purple,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Best lnwza007"),
              accountEmail: Text("Bestlnwza@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
                
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text(name),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(name: 'หน้าแรก',),
                    )
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text('Row'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RowPage(name: 'หน้าแถว',),
                    )
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text('Column widget'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ColumnPage(name: 'หน้าคอลัมน์',),
                    )
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('List view menu'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListViewMenu(),
                    )
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.card_giftcard_rounded),
              title: const Text('Card and Inkwell menu'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CardDemo(),
                    )
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.credit_card),
              title: const Text('My Card'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyCard(),
                    )
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.credit_card),
              title: const Text('Contact Me'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactPage(name: 'ติดต่อเรา'))
                  );
                  debugPrint("Contact Me");
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("MyApp"),
      ),
    );
  }
}
