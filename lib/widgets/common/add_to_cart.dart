import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;

  const AddToCart({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);
        }
      },
      style: ButtonStyle(
          // backgroundColor:
          //     WidgetStateProperty.all(MyThemeData.darkBluishColor),
          shape: WidgetStateProperty.all(const StadiumBorder())),
      child: isInCart
          ? const Icon(
              CupertinoIcons.check_mark,
              // color: MyThemeData.creamColor,
            )
          : const Icon(
              CupertinoIcons.add,
              // color: MyThemeData.creamColor,
            ),
    );
  }
}
