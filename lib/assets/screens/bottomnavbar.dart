import 'package:flutter/material.dart';
import 'package:real_estate_app/assets/screens/favoritespage.dart';
import 'package:real_estate_app/assets/screens/homepage.dart';
import 'package:real_estate_app/assets/screens/inboxpage.dart';
import 'package:real_estate_app/assets/screens/profilepage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  final List<Widget> screens = <Widget>[
    HomePage(),
    FavoritesPage(),
    InboxPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: IndexedStack(index: _selectedIndex, children: screens),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/assets/images/homeicon2.png"),
                size: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/assets/images/favicon2.png"),
                size: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/assets/images/chaticon2.png"),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/assets/images/profileicon2.png"),
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xffFB6161),
          unselectedItemColor: Colors.black,
          onTap: (index) => setState(() => _selectedIndex = index),
        ),
      ),
    );
  }
}
