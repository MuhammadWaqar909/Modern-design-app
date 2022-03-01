// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modern_design_app/pages/Nav%20menu/BarItemPage.dart';
import 'package:modern_design_app/pages/Nav%20menu/HomePage.dart';
import 'package:modern_design_app/pages/Nav%20menu/MyPage.dart';
import 'package:modern_design_app/pages/Nav%20menu/SearchPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int countIndex = 0;

  List pages = [HomePage(), BarPage(), SearchPage(), MyPage()];

  void onTap(int index) {
    return setState(() {
      countIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[countIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        // type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepPurple,
        currentIndex: countIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTap,
        items: [
          const BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          const BottomNavigationBarItem(
              label: "Bar", icon: Icon(Icons.bar_chart)),
          const BottomNavigationBarItem(
              label: "Search", icon: Icon(Icons.search)),
          const BottomNavigationBarItem(
              label: "MY", icon: Icon(Icons.person_add)),
        ],
      ),
    );
  }
}
