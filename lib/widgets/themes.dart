import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyThemeData {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        cardColor: Colors.white,
        canvasColor: creamColor,
        primaryColor: lightBluishColor,
        primaryColorLight: Colors.black,
        primaryColorDark: creamColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          backgroundColor: darkBluishColor,
          iconColor: creamColor,
        )),
        buttonTheme: ButtonThemeData(
          colorScheme:
              ColorScheme.dark(primary: darkBluishColor, secondary: creamColor),
        ),
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.black),
            titleTextStyle: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: Colors.black)),
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
          headlineSmall: TextStyle(color: Colors.black),
          headlineMedium: TextStyle(color: Colors.black),
          headlineLarge: TextStyle(color: Colors.black),
        ),
        // colorScheme:
        //     ColorScheme.fromSwatch().copyWith(secondary: darkBluishColor),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        primaryColor: darkBluishColor,
        primaryColorLight: Colors.white,
        primaryColorDark: darkCreamColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: lightBluishColor, iconColor: darkCreamColor)),
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.dark(
              primary: lightBluishColor, secondary: darkCreamColor),
        ),
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.white),
            titleTextStyle: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: Colors.white)),
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          headlineSmall: TextStyle(color: Colors.white, height: 32),
          headlineMedium: TextStyle(color: Colors.white),
          headlineLarge: TextStyle(color: Colors.white),
        ),
        // colorScheme: ColorScheme.fromSwatch()
        //     .copyWith(primary: Colors.white, secondary: Colors.white),
      );

  // Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color lightBluishColor = Vx.purple400;
  static Color darkBluishColor = const Color(0xFF3B3E58);
}
