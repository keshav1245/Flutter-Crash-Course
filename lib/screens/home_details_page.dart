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
                child: "Buy".text.make()
            ).wh(100,50),
          )
        ],
      ).p32(),
      appBar: AppBar(),
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
                  ],
                ).p(50),
              ),
            ))
          ],
        ),
      ),
    );
  }



}