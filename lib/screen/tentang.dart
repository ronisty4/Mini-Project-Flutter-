import 'package:flutter/material.dart';

import 'package:miniproject_recipe_app/const/theme.dart';

class TentangAplikasi extends StatelessWidget {
  const TentangAplikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tentang Aplikasi',
        ),
        backgroundColor: primaryColor,
      ),
      body: Center(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo/logo.png',
              height: 250,
              width: 250,
            ),
            Text(
              'MazaQ',
              style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'v1.0.0.',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      )),
    );
  }
}
