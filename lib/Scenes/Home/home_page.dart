import 'package:auto_size_text/auto_size_text.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:ramadan_app/Constant.dart';
import 'package:ramadan_app/Scenes/CountDown/countdown_page.dart';
import 'package:ramadan_app/Scenes/Home/Component/my_flutter_app_icons.dart';

import 'Component/element_table.dart';
import 'Component/title_image.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchIftar = true;
  bool switchSahor = false;
  bool switchAzan = false;
  List<bool> azan = [true, false, true, false, true];

  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kLightPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          kTitleImage(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTapUp: (_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CountdownPage()));
                    },
                    child: kElementTable(
                      icon: CupertinoIcons.sunset_fill,
                      textAlert: 'منبه الإفطار',
                      textTime: '16:05\nم',
                      onChanged: (value) => print(value),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  kElementTable(
                    icon: CupertinoIcons.moon_fill,
                    textAlert: 'منبه السحور',
                    textTime: '07:05\nص',
                    onChanged: (value) => print(value),
                  ),
                ],
              ),
              Container(
                width: sizeScreen.width / 2,
                height: sizeScreen.height / 1.75,
                decoration: kBoxDecorationShadow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20, left: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            MyFlutterApp.mosque,
                            color: kBlackPrimary,
                          ),
                          FlutterSwitch(
                            width: 50,
                            height: 25,
                            toggleSize: 20,
                            activeColor: kBlackPrimary,
                            value: switchAzan,
                            onToggle: (bool value) {
                              print(value);
                              setState(() {
                                switchAzan = value;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 10),
                        child: Text(
                          'الآذان',
                          style: kStyleTextBold,
                        ),
                      ),
                    ),
                    listPrayers("10:30 ص", "الفجر", 0),
                    listPrayers("10:30 ص", "الظهر", 1),
                    listPrayers("10:30 ص", "العصر", 2),
                    listPrayers("10:30 ص", "المغرب", 3),
                    listPrayers("10:30 ص", "العشاء", 4),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'منبه الآذان',
                          style: GoogleFonts.almarai(color: kGreyPrimary),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: kBlackPrimary),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_up,
                      color: kGreyPrimary,
                      size: 20,
                    ),
                    Icon(
                      Icons.keyboard_arrow_up,
                      color: kWhitePrimary,
                    ),
                  ],
                ),
                Text(
                  'العد التنازلي',
                  style: GoogleFonts.almarai(color: kWhitePrimary),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listPrayers(timePray, prayName, index) {
    var checked = azan[index];
    return GestureDetector(
      onTap: () {
        setState(() {
          azan[index] = !checked;
        });
      },
      child: Container(
        padding: EdgeInsets.only(right: 5, left: 5),
        width: MediaQuery.of(context).size.width / 2,
        height: 50,
        decoration: BoxDecoration(
          color: checked ? kGreyPrimary.withAlpha(65) : null,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              checked ? Icons.check_circle : null,
              color: kBlackPrimary,
              size: 30,
            ),
            Padding(
              padding:
                  index == 3 ? EdgeInsets.only(right: 17) : EdgeInsets.all(0),
              child: Text(
                prayName,
                style: kStyleText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
