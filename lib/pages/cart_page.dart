import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColorDark,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [_CartList().p16().expand(), Divider(), _CartTotal()],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;

    return SizedBox(
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            VxBuilder(
              builder: (context, _) {
                return "\$${_cart.totalPrice}".text.xl4.make();
              },
              mutations: {RemoveMutation},
            ),
            100.widthBox,
            ElevatedButton(
                onPressed: () {},
                child: "Buy"
                    .text
                    .color(context.theme.buttonTheme.colorScheme?.secondary)
                    .make())
          ],
        ));
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final _cart = (VxState.store as MyStore).cart;

    return _cart.items.length == 0
        ? "Nothing to Show".text.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                title: _cart.items[index].name.text.make(),
                leading: Icon(Icons.check).px12(),
                trailing: IconButton(
                  onPressed: () {
                    RemoveMutation(_cart.items[index]);
                  },
                  icon: Icon(CupertinoIcons.delete),
                )));
  }
}
