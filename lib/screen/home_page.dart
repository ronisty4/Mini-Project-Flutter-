import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:miniproject_recipe_app/const/theme.dart';
import 'package:miniproject_recipe_app/models/resep_api.dart';
import 'package:miniproject_recipe_app/screen/profile_page.dart';

import '../widget/build_circle_indicator.dart';
import '../widget/resep_card.dart';
import '../widget/detail_resep.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/homepage';

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int currentIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> navbar = [
      SafeArea(
        child: Container(
          child: Column(children: [
            Container(
              height: size.height * 0.08,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat Datang !',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Halo, ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngmart.com/files/21/Account-Avatar-Profile-PNG-Photo.png'),
                    ),
                  ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.817,
              width: MediaQuery.of(context).size.width,
              child: FutureBuilder(
                future: ResepApi.fetchResep(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);
                  return snapshot.hasData
                      ? ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return ResepCard(
                              title: snapshot.data![index].title,
                              thumbnailUrl: snapshot.data![index].thumb,
                              time: snapshot.data![index].times,
                              serving: snapshot.data![index].serving,
                              difficulty: snapshot.data![index].difficulty,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailResep(
                                            resep: snapshot.data![index],
                                          )),
                                );
                              },
                            );
                          })
                      : BuildCircleIndicator();
                },
              ),
            ),
          ]),
        ),
      ),
      ProfilePage()
    ];

    return Scaffold(
      body: navbar[currentIndex],
      bottomNavigationBar: ConvexAppBar(
          backgroundColor: primaryColor,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: 0,
          onTap: (int i) {
            setState(() {
              currentIndex = i;
            });
          }),
    );
  }
}
