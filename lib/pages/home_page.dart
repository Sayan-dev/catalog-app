import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
      ),
      body: Center(
        child: Container(
          child: const Text(
            "Hello I am Home",
            style: TextStyle(color: Colors.amberAccent),
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
