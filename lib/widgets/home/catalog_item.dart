import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/home/catalog_image.dart';
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
            catalog.name.text.lg
                .color(context.theme.colorScheme.secondary)
                .bold
                .make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}"
                    .text
                    .color(context.theme.primaryColorLight)
                    .bold
                    .xl
                    .make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      // backgroundColor:
                      //     WidgetStateProperty.all(MyThemeData.darkBluishColor),
                      shape: WidgetStateProperty.all(const StadiumBorder())),
                  child: const Icon(
                    CupertinoIcons.add,
                    // color: MyThemeData.creamColor,
                  ),
                )
              ],
            ).pOnly(top: 6)
          ],
        ).expand()
      ],
    ))
        .color(context.cardColor)
        .rounded
        .height(150)
        .width(250)
        .p8
        .make()
        .pOnly(top: 16);
  }
}
