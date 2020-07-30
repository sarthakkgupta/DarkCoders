import 'package:flutter/material.dart';
import './profilepage.dart';
import './sellpage.dart';

import './buypage.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages = [
    BuyPage(),
    SellPage(),
    ProfilePage()
    
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _pages[_selectedPageIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
       backgroundColor: Color(0xff63FFDB),
       items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.add,), title: Text('Buy')),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_circle), title: Text('Sell')),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), title: Text('Profile')),
      ]),
    );
  }
}
