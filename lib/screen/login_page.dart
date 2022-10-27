import 'package:flutter/material.dart';
import 'package:miniproject_recipe_app/const/theme.dart';
import 'package:miniproject_recipe_app/screen/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const routeName = '/loginpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF5003),
      body: Column(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.65,
          width: double.infinity,
          child: Image.asset(
            "assets/images/cooking.png",
            fit: BoxFit.contain,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          height: MediaQuery.of(context).size.height * 0.35,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(115),
                  topRight: const Radius.circular(115)),
              color: Color(0xfff4f4f4)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(height: 8),
            Container(
              child: Column(children: [
                Text(
                  'MazaQ',
                  style: TextStyle(
                      fontSize: 56,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Inter'),
                ),
                SizedBox(height: 8),
                Text(
                  'Temukan resep terlezat untuk hidangan hari ini di MazaQ secara Gratis',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ]),
            ),
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor, shape: StadiumBorder()),
                onPressed: () async {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Get Started',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya Akun ?',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                Text(
                  '  Login',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: primaryColor),
                ),
              ],
            )
          ]),
        )
      ]),
    );
  }
}
