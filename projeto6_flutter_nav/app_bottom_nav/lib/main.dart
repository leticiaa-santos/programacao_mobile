import 'package:app_bottom_nav/TelaHome.dart';
import 'package:app_bottom_nav/telaAccount.dart';
import 'package:app_bottom_nav/telaAlarm.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NavBar());
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> screens = [
    TelaHome(),
    TelaAlarm(),
    TelaAccount()
  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens.elementAt(currentIndex),
        bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.add_home) ),
          BottomNavigationBarItem(label: "Alarmes", icon: Icon(Icons.access_alarms) ),
          BottomNavigationBarItem(label: "Conta", icon: Icon(Icons.account_circle) ),
        ],
        currentIndex: currentIndex, //a posição desejada
        onTap: changeIndex, //função que muda o index


        ),
      ),
    );
  }
}