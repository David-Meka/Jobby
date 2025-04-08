import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobby/core/service/api_service.dart';
import 'package:jobby/presentation/bloc/job_bloc.dart';
import 'package:jobby/presentation/bloc/job_event.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:jobby/presentation/screens/home/home.dart';
import 'package:jobby/presentation/screens/saved%20jobs/savede_jobs_view.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int _currentIndex = 0;
  final List<Widget> homeScreen = [
    // HomeScreen(),
    HomeScreen(),

    SavedeJobsView(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => JobsBloc(apiService: ApiService())..add(FetchJobsEvent()),
      child: Scaffold(
        body: homeScreen[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          items: [
            BottomNavigationBarItem(
              // icon: Icon(Icons.home_rounded),
              icon: SvgPicture.asset('assets/svgs/home.svg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              // icon: SvgPicture.asset('android/images/svgs/saved.svg'),
              icon: Icon(Icons.bookmark_border_outlined),
              label: 'Saved',
            ),
          ],
        ),
      ),
    );
  }
}
