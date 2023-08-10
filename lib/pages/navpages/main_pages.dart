// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  List pages = ["BarItemPage", "SearchPage", "MyPage"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: ("Home"), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              label: ("Bar "), icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label: ("Search"), icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: ("My"), icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
