import 'package:flutter/material.dart';
import 'package:ramadan_app/Constant.dart';

class CountdownPage extends StatefulWidget {
  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kLightPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Center(
            child: Text(
              'عد تنازلي',
              style: kStyleTextBold,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: size.width,
            height: size.width - 40,
            decoration: BoxDecoration(
                color: kWhitePrimary,
                borderRadius: BorderRadius.circular(500),
                boxShadow: [
                  BoxShadow(
                      color: kGreyPrimary.withOpacity(0.1),
                      offset: Offset(10, 10),
                      blurRadius: 20),
                ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: size.width/2,
                height: size.width/2,
                decoration: kBoxDecoration,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),

                width: size.width/2,
                height: size.width/2,
                decoration: kBoxDecoration,
              ),
            ],
          )
        ],
      ),
    );
  }
}
