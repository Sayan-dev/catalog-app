import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/home/catalog_header.dart';
import 'package:flutter_catalog/widgets/home/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
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
        backgroundColor: Theme.of(context).canvasColor,
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(side: BorderSide.none),
          onPressed: () {
            Navigator.pushNamed(context, AppRouter.cartRouter);
          },
          backgroundColor: context.theme.buttonTheme.colorScheme?.primary,
          child: Icon(
            CupertinoIcons.cart,
            color: context.theme.buttonTheme.colorScheme?.secondary,
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CatalogHeader(),
                if (CatalogModel.items.isNotEmpty)
                  const CatalogList().py16().expand()
                else
                  Center(child: const CircularProgressIndicator().py(16))
                      .expand()
              ],
            ),
          ),
        ));
  }
}
