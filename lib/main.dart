import 'package:flutter/material.dart';
import 'package:flutter_week17/home.dart';
import 'package:flutter_week17/pages/contact.dart';
import 'package:flutter_week17/widgets/column_page.dart';
import 'package:flutter_week17/widgets/row_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/':(context)=>const ContactPage(name:'ติดต่อเรา'),
        //HomePage.id: (context) => const HomePage(name:'home'),
        // ContactPage.id:(context)=>const ContactPage(name: 'ติดต่อเรา')
        ContactPage.id:(context)=> const ContactPage(name:'ติดต่อเรา'),
        ColumnPage.id:(context)=> const ColumnPage(name:'หน้าคอลัมน์'),
        RowPage.id:(context)=> const RowPage(name:'หน้าคอลัมน์')
      },
    );
  }
}
