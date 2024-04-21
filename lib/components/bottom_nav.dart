// lib/components/bottom_nav.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class BottomNav extends StatefulWidget {
  final PageController pageController;

  BottomNav({super.key, required this.pageController});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(blurRadius: 20, color: Color.fromARGB(33, 61, 0, 77))
      ]),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          child: GNav(
            gap: 5,
            activeColor: Colors.white,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
            duration: Duration(milliseconds: 800),
            tabBackgroundColor: Color(0xFF4B216D),
            tabs: [
              GButton(
                icon: LineIcons.church,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.prayingHands,
                text: 'Prayers',
              ),
              GButton(
                icon: LineIcons.book,
                text: 'Search',
              ),
              GButton(
                icon: LineIcons.music,
                text: 'Profile',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
              widget.pageController.jumpToPage(index);
            },
          ),
        ),
      ),
    );
  }
}
