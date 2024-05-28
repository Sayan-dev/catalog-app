import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/home/catalog_image.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: catalog.id,
            child: CatalogImage(
              image: catalog.image,
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(MyThemeData.darkBluishColor).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                  onPressed: () {},
                  child: "Buy".text.color(MyThemeData.creamColor).make(),
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(MyThemeData.darkBluishColor),
                      shape: WidgetStateProperty.all(StadiumBorder())),
                )
              ],
            ).pOnly(top: 6)
          ],
        ).expand()
      ],
    )).white.rounded.height(150).width(250).p8.make().pOnly(top: 16);
  }
}
