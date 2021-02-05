import 'package:flutter/material.dart';
import 'package:portfolio/Screen/Home_Tab/home_tab_screen.dart';
import 'package:portfolio/Screen/Social_Tab/social_tab_screen.dart';
import 'package:portfolio/Screen/Stats_Tab/stats_tab_screen.dart';
import './../../Screen/Work_Tab/work_tab_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: _selectedTab,
          children: [
            HomeTabScreen(),
            StatsTabScreen(),
            WorkTabScreen(),
            SocialTabScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp),
              label: 'Stats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Work',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mediation),
              label: 'Social',
            ),
          ],
          currentIndex: _selectedTab,
          onTap: (index) {
            setState(() {
              _selectedTab = index;
            });
          },
        ),
      ),
    );
  }
}
