import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
        ),
      ),
      body: Center(
        child: Container(
          child: const Text(
            "Hello I am Profile",
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
