// lib/screens/homescreen.dart
import 'package:catholic_app/screens/landing_page.dart';
import 'package:catholic_app/screens/liturgicalCalendar.dart';
import 'package:flutter/material.dart';
import 'package:catholic_app/components/bottom_nav.dart';

import 'prayersPage.dart';
import 'yearReadings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome '), // Add the user's name if the are logged in//
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),  // to prevent swiping between pages
        children: <Widget>[
          LandingPage(),
          LiturgicalCalendarScreen(),
          PrayersPage(),
          YearReadingsScreen(),
        ],
      ),
      bottomNavigationBar: BottomNav(pageController: _pageController),
    );
  }
}
