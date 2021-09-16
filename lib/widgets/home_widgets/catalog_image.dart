import 'package:flutter/material.dart';
import 'package:flutter_catelog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogImage extends StatelessWidget{

  final imgUrl;

  const CatalogImage({Key? key, this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(imgUrl).box.rounded.p8.color(MyTheme.cream).make().p16().w40(context);
  }

}
