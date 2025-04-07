import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobby/presentation/screens/jobs/jobs_listings_view.dart';
import 'package:jobby/presentation/screens/saved%20jobs/savede_jobs_view.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int _currentIndex = 0;
  final List<Widget> homeScreen = [JobsListingsView(), SavedeJobsView()];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeScreen[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          //TODO add the svgs
          BottomNavigationBarItem(
            icon: SvgPicture.asset('android/images/svgs/home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('android/images/svgs/saved.svg'),
            label: 'Saved',
          ),
        ],
      ),
    );
  }
}
