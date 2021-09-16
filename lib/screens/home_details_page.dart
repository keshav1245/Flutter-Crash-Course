import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catelog/models/catelog.dart';
import 'package:flutter_catelog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget{

  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.cream,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image).h32(context)
            ),
            Expanded(child: VxArc(
              height: 40.0,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(MyTheme.darkBluish).bold.make(),
                    catalog.desc.text.xl.make(),
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor"
                        .text
                        .make().p16(),
                  ],
                ).py(50),
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catalog.price}".text.xl4.bold.red800.make(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,8.0,0),
            child: ElevatedButton(

                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish),
                    shape: MaterialStateProperty.all(StadiumBorder())
                ),
                onPressed: (){},
                child: Row(
                  children: [
                    "Add to Cart".text.make(),
                    10.widthBox,
                    Icon(CupertinoIcons.cart_badge_plus)
                  ],
                )
            ).wh(150,50),
          )
        ],
      ).p32(),
    );
  }



}