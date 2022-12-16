import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

Color primaryColor = HexColor("#024EC5");
HexColor backgroundColor = HexColor('#FBB040');
HexColor accentColor = HexColor('#dfcbf5');
Color subtitleTextColor = Colors.black54;
Color iconColor = HexColor('#1a1919');

var boldTextStyle = GoogleFonts.mulish(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.w900,
);

var subTitleTextStyle = GoogleFonts.mulish(
  color: Colors.black,
  // fontWeight: FontWeight.w500,
  fontSize: 11,
);

var labelTextStyle = GoogleFonts.mulish(
  color: Colors.black,
  fontSize: 12,
);

var hintTextStyle = GoogleFonts.mulish(
  fontSize: 18,
  color: Colors.grey.shade500,
);
