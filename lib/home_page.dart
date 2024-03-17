import 'package:flutter/material.dart';
import 'package:paint_an_app/screens/home_screen.dart';
import 'package:paint_an_app/screens/notifications.dart';
import 'package:paint_an_app/screens/profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    ProfileScreen(),
    HomeScreen(),
    HomeScreen(),
    const Notifications(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => _currentIndex = index,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/home.png'),
              label: 'Home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/bookmarks.png'),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/notifications.png'),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/profile.png'),
            label: 'Profile',
          )
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}
