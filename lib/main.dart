import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/utilities/constants.dart';
import 'package:gt2022/views/screens/authorization_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kuda App Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        accentColor: accentColor,
        iconTheme: IconThemeData(color: iconColor),
        fontFamily: GoogleFonts.mulish().fontFamily,
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home: AuthorizationScreen(),
    );
  }
}

// muli kuda font #40196d

