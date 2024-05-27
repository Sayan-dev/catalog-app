import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalog_json =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalog_json);
    var productsData = decodedData["products"];
    setState(() {
      CatalogModel.items = List.from(productsData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
      ),
      body: CatalogModel.items.isNotEmpty
          ? ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: CatalogModel.items.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: CatalogModel.items[index]);
              })
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: AppDrawer(),
    );
  }
}
