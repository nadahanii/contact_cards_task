import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContactCard extends StatelessWidget {
  String name, mail, phone, profile, bossiness;

  ContactCard({this.name, this.mail, this.phone, this.profile, this.bossiness});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 170.0,
      margin: EdgeInsets.symmetric(vertical: 25.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade300,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(this.profile),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.mail, color: Colors.black),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        this.mail,
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.phone,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        this.phone,
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                //designs
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.pink.shade300,
                    ),
                    Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.pink.shade300,
                    ),
                    Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.pink.shade300,
                    ),
                    Icon(
                      CupertinoIcons.tag,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        this.bossiness,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      CupertinoIcons.trash,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
