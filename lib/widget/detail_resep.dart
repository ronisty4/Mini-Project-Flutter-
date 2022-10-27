import 'package:flutter/material.dart';
import 'package:miniproject_recipe_app/const/theme.dart';

import 'package:miniproject_recipe_app/models/resep.dart';

class DetailResep extends StatelessWidget {
  final Resep resep;

  const DetailResep({super.key, required this.resep});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Resep'),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0), BlendMode.multiply),
                    image: NetworkImage(resep.thumb),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(children: [
                Text(
                  resep.title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 32,
                  width: 64,
                  child: Divider(color: Colors.deepOrange),
                ),
                Row(
                  children: [
                    Text(
                      '- Perkiraan waktu memasak : ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      resep.times,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text('- Porsi Makananan : ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400)),
                    Text(
                      resep.serving,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(children: [
                  Text('- Tingkat kesulitan memasak : ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                  Text(resep.difficulty,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500))
                ]),
              ]),
            ) // Image(resep.thumb),
          ],
        ),
      ),
    );
  }
}
