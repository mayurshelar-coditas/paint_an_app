import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paint_an_app/screens/home_screen.dart';
import 'package:paint_an_app/screens/notifications.dart';
import 'package:paint_an_app/screens/post_screen.dart';
import 'package:paint_an_app/screens/profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    const PostScreen(),
    const Notifications(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: _screens[_currentIndex],
      bottomNavigationBar:
          _currentIndex != 3 ? _buildBottomNavigationBar() : null,
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      fixedColor: Colors.white,
      currentIndex: _currentIndex,
      onTap: (index) => setState(() => _currentIndex = index),
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/home.png'),
          label: 'Home',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/bookmark.png'),
          label: 'Bookmark',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/notifications.png',
            height: 20.59.h,
            width: 16.27.w,
          ),
          label: 'Notifications',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/profile.png'),
          label: 'Profile',
          backgroundColor: Colors.white,
        )
      ],
      backgroundColor: Colors.white,
    );
  }
}
