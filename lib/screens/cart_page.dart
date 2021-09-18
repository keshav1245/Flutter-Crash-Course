import 'package:flutter/material.dart';
import 'package:flutter_catelog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class Cart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      backgroundColor: Theme.of(context).canvasColor,

    );
  }

}