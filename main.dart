import 'package:flutter/material.dart';
import 'package:try_ui/deals.dart';
import 'package:try_ui/orders.dart';
import 'package:try_ui/profile.dart';
import 'package:try_ui/try.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Navbar(),
    );
  }
}

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedscreen = 0;

  List<Widget> screen =[
    Try(),
    orders(),
    deals(),
    profile()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen.elementAt(selectedscreen),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectedscreen,
        type: BottomNavigationBarType.fixed,
        onTap: (Index) {
          setState(() {
            selectedscreen = Index;
          });

        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),label: 'home'),
            BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),label: 'orders'),
            BottomNavigationBarItem(
            icon: Icon(Icons.discount_outlined),label: 'deals'),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),label: 'profile')
            ]),
    );
  }
}