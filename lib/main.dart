import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:ramadan_app/Service/Location/location.dart';
import 'package:ramadan_app/Service/PrayTime/pray_time.dart';
import 'package:timezone/standalone.dart' as tz;
import 'Scenes/Home/home_page.dart';

Future<void> main() async {
  runApp(MyApp());
  var position=await Location.getPosition();
  PrayTime prayTime=PrayTime();
  prayTime.setLocation(position.latitude, position.longitude, CalculationMethod.umm_al_qura, Madhab.hanafi);
  print(prayTime.getPrayTime(Prayer.dhuhr));

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

