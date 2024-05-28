import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/common/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.theme.primaryColor,
      bottomNavigationBar: Container(
        color: context.theme.primaryColorDark,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}"
                .text
                .bold
                .xl4
                .color(context.theme.textTheme.bodySmall?.color)
                .make(),
            AddToCart(catalog: catalog).wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(tag: catalog.id, child: Image.network(catalog.image))
                .h32(context)
                .p16(),
            VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: context.theme.primaryColorDark,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(context.theme.textTheme.headlineMedium?.color)
                          .bold
                          .make(),
                      catalog.desc.text.textStyle(context.captionStyle).make(),
                      "Lorem ipsum dolor sit amet. Sed do eiusmod tempo aliqua nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate."
                          .text
                          .textStyle(context.captionStyle)
                          .center
                          .make()
                          .py16()
                    ],
                  ).pLTRB(32, 64, 32, 60),
                ))
          ],
        ),
      ),
    );
  }
}
