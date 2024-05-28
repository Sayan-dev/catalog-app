import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyThemeData.lightTheme(context),
      darkTheme: MyThemeData.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/": (context) => const LoginPage(),
        AppRouter.homeRoute: (context) => const HomePage(),
        // AppRouter.homeDetailsRouter: (context) => HomeDetailPage(),
        AppRouter.loginRoute: (context) => const LoginPage(),
        AppRouter.cartRouter: (context) => const CartPage()
      },
    );
  }
}
