import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:ramadan_app/Constant.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchIftar = true;
  bool switchSahor = false;

  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kLightPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: AssetImage('images/moon_ramdan.png'),
                width: 100,
                height: 100,
              ),
              Text(
                'رمضان كريم',
                style: GoogleFonts.almarai(
                    color: kBlackPrimary,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    width: sizeScreen.width / 2 - 50,
                    height: sizeScreen.height / 4,
                    decoration: kBoxDecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(CupertinoIcons.sunset,color: kBlackPrimary,),
                              FlutterSwitch(
                                width: 50,
                                height: 25,
                                toggleSize: 20,
                                activeColor: kBlackPrimary,
                                value: switchIftar,
                                onToggle: (bool value) {
                                  print(value);
                                  setState(() {
                                    switchIftar = value;
                                  });
                                },
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('02:15 ص', style: kStyleTextBold),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'منبه الافطار',
                              style: GoogleFonts.almarai(color: kGreyPrimary),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: sizeScreen.width / 2 - 50,
                    height: sizeScreen.height / 4,
                    decoration: kBoxDecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(CupertinoIcons.moon_fill,color: kBlackPrimary,),
                              FlutterSwitch(
                                width: 50,
                                height: 25,
                                toggleSize: 20,
                                activeColor: kBlackPrimary,
                                value: switchSahor,
                                onToggle: (bool value) {
                                  print(value);
                                  setState(() {
                                    switchSahor = value;
                                  });
                                },
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('17:35 م', style: kStyleTextBold),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'منبه السحور',
                              style: GoogleFonts.almarai(color: kGreyPrimary),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: sizeScreen.width / 2 - 50,
                height: sizeScreen.height / 2 + 35,
                decoration: kBoxDecoration,
              ),
            ],
          ),
          Container(
            height: sizeScreen.height / 12,
            width: sizeScreen.width / 4,
            color: Colors.transparent,
            child: new Container(
              decoration: new BoxDecoration(
                  color: kBlackPrimary,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(100.0),
                    topRight: const Radius.circular(100.0),
                  )),
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
            ),
          ),
        ],
      ),
    );
  }
}
