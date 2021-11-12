import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catelog/models/cart.dart';
import 'package:flutter_catelog/models/catelog.dart';
import 'package:flutter_catelog/screens/home_details_page.dart';
import 'package:flutter_catelog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';

class CatalogList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index){
          final catalog = CatalogModel.items[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDetailPage(catalog: catalog)));
            },
              child: CatalogItem(catalog : catalog)
          );
        }
    );
  }

}

class CatalogItem extends StatelessWidget{

  final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : assert(catalog != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(//connecting 2 same things for transition
                tag: Key(catalog.id.toString()),
                child: CatalogImage(imgUrl : catalog.image)
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  catalog.name.text.lg.color(Theme.of(context).accentColor).bold.make(),
                  catalog.desc.text.make(),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "\$${catalog.price}".text.xl.bold.make(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,8.0,0),
                        child: _AddToCart(catalog : catalog),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
    ).color(Theme.of(context).cardColor).rounded.square(150).make().py16();
  }

}

class _AddToCart extends StatefulWidget{

  final Item catalog;


  const _AddToCart({ Key? key, required this.catalog}) : super(key: key) ;

  @override
  __AddToCartState createState() => __AddToCartState();
}

class __AddToCartState extends State<_AddToCart> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Theme.of(context).buttonColor),
            shape: MaterialStateProperty.all(StadiumBorder())
        ),
        onPressed: (){
          isInCart = isInCart.toggle();
          final _catalog = CatalogModel();

          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {

          });
          },
        child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus)
    );
  }
}