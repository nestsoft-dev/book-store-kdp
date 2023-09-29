import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:net_bookstore/constants/constants.dart';
import 'package:net_bookstore/pages/home.dart';
import 'package:net_bookstore/pages/profile.dart';
import 'package:net_bookstore/pages/search.dart';

import 'downloads.dart';
import 'history.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  onTapp(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _screen = [
    const HomePage(),
    const SearchBooks(),
    const HistoryPage(),
    const DownloadsBooks(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTapp,
          elevation: 0,
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: MyColors.deepYellow,
          unselectedItemColor: Colors.grey[350],
          enableFeedback: true,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.homeAlt,
                  size: 20,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.search,
                  size: 20,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.listCheck,
                  size: 20,
                ),
                label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.book,
                  size: 20,
                ),
                label: 'Books'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.userCheck,
                  size: 20,
                ),
                label: 'User'),
          ]),
    );
  }
}
