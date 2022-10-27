import 'package:flutter/material.dart';
import 'package:miniproject_recipe_app/const/theme.dart';

class ResepCard extends StatelessWidget {
  final String title;
  final String time;
  final String serving;
  final String difficulty;
  final String thumbnailUrl;
  final Function() onTap;

  const ResepCard(
      {required this.title,
      required this.time,
      required this.serving,
      required this.difficulty,
      required this.onTap,
      required this.thumbnailUrl});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        width: size.width,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: Offset(6, 1),
                blurRadius: 12.0,
                spreadRadius: -6.6)
          ],
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.25), BlendMode.multiply),
                  image: NetworkImage(thumbnailUrl),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12),
            width: size.width * 0.5,
            height: size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                              color: secondColor.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(7)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.restaurant,
                                size: 18,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                serving,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: secondColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.schedule,
                                  color: Colors.white, size: 18),
                              SizedBox(width: 8),
                              Text(
                                time,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: size.width,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                      decoration: BoxDecoration(
                          color: secondColor.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Text(
                            "Tingkat kesulitan :",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            difficulty,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
