import 'package:flutter/material.dart';
import 'package:miniproject_recipe_app/const/theme.dart';
import 'package:miniproject_recipe_app/screen/home_page.dart';
import 'package:miniproject_recipe_app/screen/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = '/splashscreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _gohome();
  }

  _gohome() async {
    await Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffff800b), Color(0xFFFF5003)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/logo/logo-splash.png",
                  height: 130,
                  width: 130,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "MazaQ",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            const CircularProgressIndicator(),
          ],
        ));
  }
}
