import 'package:flutter/material.dart';
import 'package:minto/screens/Profile.dart';
import 'package:minto/screens/home.dart';
import 'package:minto/screens/order.dart';
import 'package:minto/screens/search.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int touch = 0;
  List navigationPage = [
    const HomeScreen(),
    const SearchScreen(),
    const OrderScreen(),
    const ProfileScreen(),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationPage.elementAt(touch),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor:  Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.orange,
        currentIndex: touch,
        onTap: (index) {
          setState(() {
            touch = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Order',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
              backgroundColor: Colors.white),
          
        ],
      ),
    );
  }
}
