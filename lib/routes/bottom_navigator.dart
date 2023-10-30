import 'package:flutter/material.dart';
import 'package:spotify_app/routes/home_page.dart';
import 'package:spotify_app/routes/profile_page.dart';
import 'package:spotify_app/routes/search_page.dart';
import 'package:spotify_app/routes/your_library.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  final List pages = const [
    HomePage(),
    SearchPage(),
    YourLibrary(),
    ProfilePage(),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(181, 0, 0, 0),
        fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedindex,
        onTap: _ontapitem,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_music,
              color: Colors.grey,
            ),
            label: 'YourLibrary',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[selectedindex],
    );
  }

  void _ontapitem(int index) {
    setState(() {
      selectedindex = index;
    });
  }
}
