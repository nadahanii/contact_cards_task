import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ContactCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey.shade300,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactCard(
                  name: 'name whatever',
                  mail: 'doesnt-matter@haha.com',
                  phone: '019465465',
                  profile:
                      'https://i.pinimg.com/originals/98/18/18/981818357c96c7dc3e2bb08879a703b1.jpg',
                  bossiness: 'not boss',
                ),
                ContactCard(
                  name: 'whatever name',
                  mail: 'haha@doesnt-matter.com',
                  phone: '01864641316',
                  profile:
                      'https://cdn4.iconfinder.com/data/icons/outer-space-8/512/Ufo-512.png',
                  bossiness: 'boss',
                ),
                ContactCard(
                  name: 'what name ever',
                  mail: 'doesnt-haha@matter.com',
                  phone: '0144314684',
                  profile:
                      'https://image.freepik.com/free-icon/important-person_318-10744.jpg',
                  bossiness: 'maybe boss',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
