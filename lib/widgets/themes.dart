import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        cardColor: Colors.lightBlue[50],
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            iconTheme: Theme.of(context).iconTheme,
            titleTextStyle: Theme.of(context).textTheme.headlineSmall),
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            iconTheme: Theme.of(context).iconTheme,
            titleTextStyle: Theme.of(context).textTheme.headlineSmall),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );

  // Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBluishColor = const Color(0xFF3B3E58);
}
