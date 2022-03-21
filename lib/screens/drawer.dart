import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:real_estate_app/screens/bottomnavbar.dart';
import 'package:real_estate_app/screens/homepage.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  CustomDrawerState createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer> {
  final _advancedDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Color(0xffFB6161).withOpacity(0.9),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: BottomNavBar(),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 64.0,
                    bottom: 64.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 4),
                      ),
                    ],
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage("lib/assets/images/andrea.png")),
                ),
                ListTile(
                  onTap: () {},
                  leading: ImageIcon(
                    AssetImage("lib/assets/images/homeicon2.png"),
                    size: 24,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: ImageIcon(
                    AssetImage("lib/assets/images/profileicon2.png"),
                  ),
                  onTap: () {},
                  title: Text(
                    'Profile',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  leading: ImageIcon(
                    AssetImage("lib/assets/images/favicon2.png"),
                    size: 24,
                  ),
                  title: Text(
                    'Favourites',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: ImageIcon(
                    AssetImage("lib/assets/images/settingsicon.png"),
                    size: 24,
                  ),
                  onTap: () {},
                  title: Text(
                    'Settings',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ),
                Spacer(),
                DefaultTextStyle(
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}
