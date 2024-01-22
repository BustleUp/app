import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/icons_constants.dart';
import 'package:kiib/features/home/presentation/pages/home_screen.dart';
import 'package:kiib/features/home/presentation/pages/profile_screen.dart';
import 'package:kiib/features/home/presentation/pages/scan_screen.dart';
import 'package:kiib/features/home/presentation/pages/search_screen.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screenOptions = <Widget>[
      const HomeScreen(),
      const ScanScreen(),
      const SearchScreen(),
      const ProfileScreen()
    ];
    void onItemClick(index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
        body: screenOptions.elementAt(selectedIndex),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: onItemClick,
          
          height: 60,
          backgroundColor: const Color(0xffFFFFFF),
          selectedIndex: selectedIndex,
          elevation: 0,
          destinations: const [
            NavigationDestination(
              icon: Icon(KiibApp.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(KiibApp.scan),
              label: 'Scan',
            ),
            NavigationDestination(
              icon: Icon(KiibApp.search),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Icon(KiibApp.profile_circle),
              label: 'Profile',
            )
          ],
        ));
  }
}
