import 'package:flutter/material.dart';
import 'package:miniproject_recipe_app/const/theme.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Profile'),
        backgroundColor: primaryColor,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://www.pngmart.com/files/21/Account-Avatar-Profile-PNG-Photo.png'),
              backgroundColor: Colors.white,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Username',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: Divider(color: primaryColor),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: primaryColor,
                ),
                title: Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(Icons.edit),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: primaryColor,
                ),
                title: Text(
                  'Email',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(Icons.edit),
              ),
            )
          ],
        ),
      ),
    );
  }
}
