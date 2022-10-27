import 'package:flutter/material.dart';
import 'package:miniproject_recipe_app/screen/detail_profile.dart';
import 'package:miniproject_recipe_app/screen/tentang.dart';

import '../const/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static const routeName = '/profilepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 64,
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://www.pngmart.com/files/21/Account-Avatar-Profile-PNG-Photo.png'),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Username',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Email ',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: Divider(color: primaryColor),
              ),
              Column(
                children: [
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(children: [
                        Row(children: [
                          Icon(
                            Icons.manage_accounts,
                            size: 35,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Detai Profile',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ]),
                        SizedBox(
                          height: 8,
                          width: MediaQuery.of(context).size.height,
                          child: Divider(color: Colors.black),
                        ),
                      ]),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailProfile())),
                  ),
                  InkWell(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Column(children: [
                          Row(children: [
                            Icon(
                              Icons.info,
                              size: 35,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Tentang Aplikasi',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ]),
                          SizedBox(
                            height: 8,
                            width: MediaQuery.of(context).size.height,
                            child: Divider(color: Colors.black),
                          ),
                        ]),
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TentangAplikasi()))),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(children: [
                        Row(children: [
                          Icon(
                            Icons.logout,
                            size: 35,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Logout',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ]),
                        SizedBox(
                          height: 8,
                          width: MediaQuery.of(context).size.height,
                          child: Divider(color: Colors.black),
                        ),
                      ]),
                    ),
                    onTap: () => Navigator.of(context).push,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
