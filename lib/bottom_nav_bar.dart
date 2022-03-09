import 'package:ecommerce/screens/homepage.dart';
import 'package:ecommerce/screens/notification_page.dart';
import 'package:flutter/material.dart';

import 'screens/category.dart';
import 'screens/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  List screen = [
    const HomePage(),
    const Category(),
    const NotificationPage(),
    const ProfilePage(),
    // const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screen.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: ((index) => setState(() {
                selectedIndex = index;
              })),
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          elevation: 20,
          selectedIconTheme: const IconThemeData(size: 32),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notifications'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
