import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/Drawer/drawerheader.dart';
import 'package:flutter_catalog/utils/routes.dart';

class AppDrawer extends Drawer {
  handleNavigation(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      width: 260,
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            const MyDrawerHeader(),
            ListTile(
              onTap: () {
                handleNavigation(context, AppRouter.homeRoute);
              },
              leading: const Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: const Text(
                "Home",
                textScaler: TextScaler.linear(1.2),
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                handleNavigation(context, AppRouter.homeDetailsRouter);
              },
              leading: const Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: const Text(
                "Profile",
                textScaler: TextScaler.linear(1.2),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
