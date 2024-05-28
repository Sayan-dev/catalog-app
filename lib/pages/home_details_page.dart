import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
        ),
      ),
      backgroundColor: MyThemeData.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Buy".text.color(MyThemeData.creamColor).make(),
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(MyThemeData.darkBluishColor),
                  shape: WidgetStateProperty.all(StadiumBorder())),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        child: Container(
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
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(MyThemeData.darkBluishColor)
                            .bold
                            .make(),
                        catalog.desc.text
                            .textStyle(context.captionStyle)
                            .make(),
                        // ButtonBar(
                        //   alignment: MainAxisAlignment.spaceBetween,
                        //   buttonPadding: EdgeInsets.zero,
                        //   children: [
                        //     "\$${catalog.price}".text.bold.xl.make(),
                        //     ElevatedButton(
                        //       onPressed: () {},
                        //       child: "Buy"
                        //           .text
                        //           .color(MyThemeData.creamColor)
                        //           .make(),
                        //       style: ButtonStyle(
                        //           backgroundColor: WidgetStateProperty.all(
                        //               MyThemeData.darkBluishColor),
                        //           shape:
                        //               WidgetStateProperty.all(StadiumBorder())),
                        //     )
                        //   ],
                        // ).pOnly(top: 6)
                      ],
                    ).py64(),
                  )).expand()
            ],
          ),
        ),
      ),
    );
  }
}
