import 'package:flutter/material.dart';
import 'package:miniproject_recipe_app/screen/home_page.dart';
import 'package:miniproject_recipe_app/screen/login_page.dart';
import 'package:miniproject_recipe_app/screen/profile_page.dart';
import 'package:miniproject_recipe_app/screen/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: primaryfont,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => HomePage(),
        ProfilePage.routeName: (context) => const ProfilePage(),
      },
      home: FutureBuilder(
        future: Future.delayed(Duration(seconds: 1)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}
