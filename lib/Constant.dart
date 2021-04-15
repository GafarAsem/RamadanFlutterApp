



import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

const kLightPrimary =Color(0xffF6F6F6);
const kWhitePrimary =Color(0xffFFFFFF);

const kBlackPrimary=Color(0xff0A0A0A);
const kGreyPrimary=Color(0xffA9ABAF);

const kShadowBox=BoxShadow(color: kGreyPrimary,offset: Offset(0, 10),blurRadius: 20);

const kBoxDecoration =BoxDecoration(
  color: kWhitePrimary,
  borderRadius:   BorderRadius.all(Radius.circular(20)),
  boxShadow:  [kShadowBox],
);


var kStyleText=GoogleFonts.almarai(fontSize: 20,color: kBlackPrimary);
var kStyleTextBold=GoogleFonts.almarai(fontSize: 30,color: kBlackPrimary,fontWeight: FontWeight.bold);