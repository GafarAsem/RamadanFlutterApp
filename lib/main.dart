import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:ramadan_app/Service/PrayTime/pray_time.dart';

import 'Scenes/Home/home_page.dart';

void main() {
  runApp(MyApp());
  PrayTime prayTime=PrayTime(28.393130, 36.583493);
  print(prayTime.getPrayTime(Prayer.isha));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

