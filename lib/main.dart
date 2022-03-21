import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:real_estate_app/screens/drawer.dart';
import 'package:real_estate_app/screens/favorites_change_notifier.dart';
import 'package:flutter/services.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => FavoritesChangeNotifier()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      title: 'Real-Estate App 2',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(fontFamily: 'Inter', primaryColor: const Color(0xFFFFFFFF)),
      home: AnimatedSplashScreen(
        backgroundColor: Color(0xffFB6161),
        splash: Container(
          child: Lottie.asset("lib/assets/animations/splashscreen.json",
              height: 400),
        ),
        duration: 1000,
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: const CustomDrawer(),
      ),
    );
  }
}
