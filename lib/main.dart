import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/pages/home_details_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: MyThemeData.lightTheme(context),
      darkTheme: MyThemeData.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        AppRouter.homeRoute: (context) => HomePage(),
        // AppRouter.homeDetailsRouter: (context) => HomeDetailPage(),
        AppRouter.loginRoute: (context) => LoginPage(),
        AppRouter.cartRouter: (context) => CartPage()
      },
    );
  }
}
