import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ramadan_app/Constant.dart';

class kElementTable extends StatefulWidget {
  IconData icon;
  String textTime;
  String textAlert;
  bool switchState;
  ValueChanged<bool> onChanged;

  kElementTable({
    this.icon,
    this.textTime,
    this.textAlert,
    this.switchState = false,
    this.onChanged,
  });

  @override
  _kElementTableState createState() => _kElementTableState(
        icon: this.icon,
        textTime: this.textTime,
        textAlert: this.textAlert,
        switchState: this.switchState,
        onChanged: this.onChanged,
      );
}

class _kElementTableState extends State<kElementTable> {
  IconData icon;
  String textTime;
  String textAlert;
  bool switchState;
  ValueChanged<bool> onChanged;

  _kElementTableState({
    this.icon,
    this.textTime,
    this.textAlert,
    this.switchState = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return Container(
      width: sizeScreen.width / 2 - 35,
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
                Icon(
                 icon,
                  color: kBlackPrimary,
                ),
                FlutterSwitch(
                  width: 50,
                  height: 25,
                  toggleSize: 20,
                  activeColor: kBlackPrimary,
                  value: switchState,
                  onToggle: (bool value) {
                    print(value);
                    setState(() {
                      switchState = value;
                      onChanged(switchState);
                    });
                  },
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(textTime, style: kStyleTextBold),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                textAlert,
                style: GoogleFonts.almarai(color: kGreyPrimary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
