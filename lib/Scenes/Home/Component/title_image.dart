import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Constant.dart';

class kTitleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
